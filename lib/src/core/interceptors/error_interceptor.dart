import 'package:dio/dio.dart';
import '../errors/api_error.dart';
import '../utils/logger.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // Log error
    logger.e('API Error: $err', stackTrace: err.stackTrace);

    // Tạo ApiError với message phù hợp để hiển thị
    final error = _handleError(err);

    // Reject với error đã được format
    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        error: error,
      ),
    );
  }

  ApiError _handleError(DioException err) {
    if (err.type == DioExceptionType.cancel) {
      return ApiError.cancelled();
    }

    if (err.error is ApiError) {
      return err.error as ApiError;
    }

    final statusCode = err.response?.statusCode ?? -1;
    String? message;

    if (err.response?.data is Map<String, dynamic>) {
      message = err.response?.data['message'];
    }

    return switch (statusCode) {
      401 => ApiError.unauthorized(
          message: message ?? 'Vui lòng đăng nhập lại',
        ),
      403 => ApiError.unauthorized(
          message: message ?? 'Bạn không có quyền truy cập',
        ),
      404 => ApiError.notFound(
          message: message ?? 'Không tìm thấy dữ liệu',
        ),
      >= 400 && < 500 => ApiError.badRequest(
          message: message ?? 'Yêu cầu không hợp lệ',
          statusCode: statusCode,
        ),
      >= 500 => ApiError.server(
          message: message ?? 'Lỗi hệ thống, vui lòng thử lại sau',
          statusCode: statusCode,
        ),
      _ => ApiError.network(
          message: message ?? 'Không thể kết nối tới server',
          statusCode: statusCode,
        ),
    };
  }
}
