class ApiConstants {
  static const String apiBaseUrl = "https://tabibak.aboomarmediclub.com/api/";
  static const String login = "login";
  static const String signUp = "register";
  static const String forgetPassword = "password/send-mail";
  static const String checkcode = "password/check-code";
  static const String resetpassword = "password/reset";
  static const String pharmacySearch =
      "pharmacies?x={lat}&y={lng}&medicine_name={medicineName}";
  static const String searchMedicine = "products?name={medicineName}";
  static const String pharmacyRecommended = "products/recommendation";
  static const String pharmacyBestDeals = "products/best_deals";
  static const String bloodBank = "blood_bank?x={lat}&y={lng}&type={bloodType}";
  static const String hospitals = "hospitals?x={lat}&y={lng}&{id}";
  static const String clinics =   "clinics?x={lat}&y={lng}&{id}";
  static const String departments = "departments";
}

class ApiErrors {
  static const String success = "Register has been successfully";
  static const String badRequestError = "Bad Request Error";
  static const String noContent = "No Content";
  static const String forbiddenError = "Forbidden Error";
  static const String unauthorizedError = "Unauthorized Error";
  static const String notFoundError = "NotFound Error";
  static const String conflictError = "Conflict Error";
  static const String internalServerError = "Internal Server Error";
  static const String unknownError = "Unknown Error";
  static const String timeoutError = "Timeout Error";
  static const String defaultError = "No Internet Connection";
  static const String cacheError = "Cache Error";
  static const String noInternetError = "No Internet Error";
  static const String loadingMessage = "Loading Message";
  static const String retryAgainMessage = "Retry Again Message";
  static const String apiLogicErorr = "Api Logic Error";

  static const String ok = "Ok";
}
