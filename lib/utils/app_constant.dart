
class AppConstants {
  static final String APP_KEY = "1234567890abcdef";
  static final String ERROR_CODE_SUCCESS = "000000";
  static final String ID_EMPTY = "000000000000000000000000";
  static final String API_UPDATE_DEVICE_SUCCESS = "DVCP0000";
  static final int PAGE_SIZE = 20;
  static final DIALOG_DURATION = 1;
  static final String ASSETS_ICON_DRAWER = "assets/icons/drawer/";
  static final String ASSETS_ICON_NOTIFY = "assets/icons/notify/";
  static final String ASSETS_ICON_HOME = "assets/icons/home/";
  static final String ASSETS_ICON_BOTTOM_NAV = "assets/icons/bt_nav_bar/";

  //activity log
  static const int AL_SIGN_SERVICE = 400; //DANG KY DICH VU
  static const int AL_CANCEL_SERVICE = 401; //HUY DICH VU
  static const int AL_HIBERNATE_SERVICE = 402; //DONG BANG DICH VU
  static const int AL_ACTIVE_SERVICE = 403; //KICH HOAT DICH VU
  static const int AL_EXCHANGE_SERVICE = 404; //CHUYEN NHUONG DICH VU
  static const int AL_RENEW_SERVICE = 405; //GIA HAN DICH VU
  static const int AL_RENT_TRAINER = 406; //THUE HUAN LUYEN VIEN
  static const int AL_CHANGE_TRAINER = 407; //THAY DOI HUAN LUYEN VIEN
  static const int AL_SUBSTITUTE_TRAINER = 408; //HUAN LUYEN VIEN DAY THAY
  static const int AL_RENT_HOLDER_BOARD = 409; //THUE TU DO
  static const int AL_PAY_HOLDER_BOARD = 410; //TRA TU DO

  //HR app/////////////////////////////////////////////////////////////////
  static const int NTFY_ACTION_TYPE_CHECK_IN_HR = 16;
  static const int NTFY_ACTION_TYPE_APPROVE_HR = 17;
  static const int NTFY_ACTION_TYPE_SALARY_HR = 18;

  static const int NTFY_ACTION_TYPE_HR_CHECKIN_IN_TIME = 10000;
  static const int NTFY_ACTION_TYPE_HR_CHECKIN_LATE = 10001;
  static const int NTFY_ACTION_TYPE_HR_CHECKOUT_IN_TIME = 10002;
  static const int NTFY_ACTION_TYPE_HR_CHECKOUT_EARLY = 10003;
  static const int NTFY_ACTION_TYPE_HR_APPROVE_DAY_LEAVE = 10004;
  static const int NTFY_ACTION_TYPE_HR_REJECT_DAY_LEAVE = 10005;
  static const int NTFY_ACTION_TYPE_HR_APPROVE_OT_REQUEST = 10006;
  static const int NTFY_ACTION_TYPE_HR_REJECT_OT_REQUEST = 10007;
  static const int NTFY_ACTION_TYPE_HR_SALARY_DAY = 10008;
  static const int NTFY_ACTION_TYPE_HR_SALARY_MONTH = 10009;
  static const int NTFY_ACTION_TYPE_HR_HOA_HONG_KD = 10010;
  static const int NTFY_ACTION_TYPE_HR_SALARY_OT = 10011;
  static const int NTFY_ACTION_TYPE_HR_CHECK_IN_WORKSHIFT = 10012;
  static const int NTFY_ACTION_TYPE_HR_CHECK_IN_ANNUAL_DAY = 10013;
  static const int NTFY_ACTION_TYPE_HR_GO_OUT_IN_WOKING_TIME = 10014;
  static const int NTFY_ACTION_TYPE_HR_APPROVE_TICKET_IN_OUT = 10015;
  static const int NTFY_ACTION_TYPE_HR_REJECT_TICKET_IN_OUT = 10016;
  static const int NTFY_ACTION_TYPE_HR_CHECK_IN_WRONG_WORKING_TIME = 10017;
  static const int NTFY_ACTION_TYPE_HR_CHECK_IN_RELAX_TIME = 10018;
  static const int NTFY_ACTION_TYPE_HR_SEND_TICKET_IN_OUT = 10019;
  static const int NTFY_ACTION_TYPE_HR_SEND_DAY_LEAVE_REQUEST = 10020;
  static const int NTFY_ACTION_TYPE_HR_SEND_OT_REQUEST_REQUEST = 10021;
  static const int NTFY_ACTION_TYPE_HR_APPROVE_DAY_LEAVE_NOTIFY = 10022;
  static const int NTFY_ACTION_TYPE_HR_APPROVE_TICKET_IN_OUT_NOTIFY = 10023;
  static const int NTFY_ACTION_TYPE_HR_APPROVE_OT_REQUEST_NOTIFY = 10024;
  static const int NTFY_ACTION_TYPE_HR_UPDATE_CHOT_LUONG_KD = 10025;
  static const int NTFY_ACTION_TYPE_HR_CHOT_LUONG_KD = 10026;
  static const int NTFY_ACTION_TYPE_HR_CHECK_IN_WRONG_DAY_LEAVE = 10027;
  static const int NTFY_ACTION_TYPE_HR_CHECK_IN_NO_WORK = 10028;
  static const int NTFY_ACTION_TYPE_HR_CHECK_IN_NGHI_KHONG_LUONG = 10029;
  static const int NTFY_ACTION_TYPE_HR_CHECK_IN_NGHI_HUONG_LUONG = 10030;
  static const int NTFY_ACTION_TYPE_HR_APPROVE_EXPENDITURE_NOTIFY = 10031;
  static const int NTFY_ACTION_TYPE_HR_REJECT_EXPENDITURE_NOTIFY = 10032;
  static const int NTFY_ACTION_TYPE_HR_CREATE_EXPENDITURE_NOTIFY = 10033;


  static const String PREF_DEVICE_TOKEN= "DEVICE_TOKEN";// Thanh tich

  static const int DEVICE_TYPE_IPHONE = 1;// làm việc tại
  static const int DEVICE_TYPE_ANDROID = 0;// Thanh tich



  static final String HIVE_USER_BOX = "hive_user";
  static final String HIVE_MEMBER_DATA = "hive_member_data";
  static final String HIVE_HOME_FEED = "hive_home_feed";
  static final String KEY_USER_NAME = "key_user_name";
  static final String KEY_PASSWORD = "key_password";
  static final String KEY_DOMAIN = "key_domain";
  static final String KEY_CURRENT_DEPARTMENT_ID = "current_department_id";
  static final String KEY_GYM_HOME_CONFIG = "gym_config";
  static final String KEY_SPA_HOME_CONFIG = "spa_config";



  static final int TIMEOUT = 25000;
  static final String MERCHANT_ID = "45502";
  static final String MERCHANT_PASSWORD = "fe97334c05f88cc8bb13e483f9c691cf";
  static final String MERCHANT_ACCOUNT = "khanv.tb@gmail.com";

  static final String JDI_ERROR_TIMEOUT = "JDITIMEOUT";
  static final String JDI_ERROR_UNDEFINED = "JDIUNDEFINED";
  static final String JDI_ERROR_SOCKET_EXCEPTION = "JDISOCKETERROR";
  static final String JDI_SERVER_ERROR = "JDISERVERERROR";
  //trang thai lich hen spa
  static const int SPA_DANG_DAT = 1;
  static const int SPA_DA_XAC_NHAN = 2;
  static const int SPA_CHO_XAC_NHAN = 3;
  static const int SPA_DANG_DIEU_TRI = 4;
  static const int SPA_DA_XONG = 5;
  static const int SPA_HUY = 6;
  // phiếu thu chi
  static const int REVENUE = 1; // thu
  static const int EXPENDITURE = 2; // chi
  static const int ADD_FUNDS  = 3; // chi
  // trạng thái gói dịch vụ
  static const int INACTIVE = 0; //Khong hoat dong
  static const int ACTIVE = 1; //Dang hoat dong
  static const int CANCEL = 2; //Huy
  static const int ACTIVE_IN_PROGRESS = 3; //Cho kich hoat
  static const int HIBERNATE = 4; //Dong bang
  static const int EXPIRED = 5; //Het han
  static const int EXCHANGE_IN_PROGRESS = 6; //Cho chuyen doi
//
  static const int DISCOUNT_PERCENT = 1;
  static const int DISCOUNT_CASH = 2;
///
  //Sắp xếp theo thứ tự
  static const int ASCENDING = 1; // tăng dần
  static const int DECREASE = 2; // giảm giần
  ///
  ///
  /// usagetype service
  static const int USAGE_TYPE_HOUR = 1;
  static const int USAGE_TYPE_DAY = 2;
  static const int USAGE_TYPE_TIMES = 3;
  static const int USAGE_TYPE_MONTH = 4;
  static const int USAGE_TYPE_DAY_OF_WEEK = 5;
// summary report type
  static const int SUMMARY_TYPE_SERVICE_REVENUE = 0;
  static const int SUMMARY_TYPE_SALE_REVENUE = 1;
  static const int SUMMARY_TYPE_CUSTOMER = 10;
  // summary report type
  static const int CHI_DOI_TAC  = 1;
  static const int CHI_TIEN_LUONG  = 2;
  static const int CHI_DAU_TU_VAN_PHONG = 3;
  static const int CHI_TIEU_KHAC = 4;
  static const int THU_TU_BAN_DICH_VU = 5;
  static const int THU_BAN_HANG = 6;
  static const int THU_DOI_TAC = 7;
  static const int THU_TU_BAN_DICH_VU_VAS = 8;
  static const int THU_TU_BAN_VE_LE = 9;
  static const int THU_PHI_DONG_BANG = 10;
  static const int THU_PHI_CHUYEN_NHUONG = 11;
  static const int THU_TU_GACH_NO = 12;
  static const int THU_KHAC = 13;
  static const int THU_TAP_THU = 14;
  static const int THU_BAN_DICH_VU_DI_KEM = 15;
  static const int THU_TIEN_VOUCHER = 16;
  static const int THU_PHI_CONG_NGAY = 17;
  static const int THU_PHI_BOI_QUA_GIO = 18;
  // payment type
  static const int TIEN_MAT   = 1;
  static const int CHUYEN_KHOAN   = 2;
  static const int TONG_QUY  = 3;
  static const int COD  = 4;
  static const int QR_PAY  = 5;
  static const int TRA_GOP  = 6;
  static const int VOUCHER  = 7;
  static const int VISA  = 8;
  static const int MULTI_METHOD  = 9;
  // group type
  static const int NHAN_VIEN    = 1;
  static const int KHACH_HANG    = 2;
  static const int  NHA_CUNG_CAP   = 3;
  static const int KHAC   = 0;




  static const List<String> LIST_TYPE_PAYMENT = [
    'Tiền mặt',
    'Chuyển khoản',
    // 'Tổng quỹ',
    // 'COD',
    // 'QR-PAY',
    // 'Trả góp',
    // 'Voucher',
    // 'Thẻ Visa',
    // 'Phương pháp khác'
  ];
  static const List<String> LIST_PAYMENT_IN = [
'',
    'Thu bán hàng',
    'Thu đối tác',
    'Thu bán dịch vụ',
    'Dịch vụ thuê mượn',
    'Thu bán vé lẻ',
    'Thu phí bảo lưu',
    'Thu phí chuyển nhượng',
    'Thu gạch nợ',
    'Thu tập thử',
    'Thu khác',
    'Thu bán dịch vụ đi kèm',
    'Thu tiền Voucher',
    'Thu phí cộng ngày tập/lần quẹt',
  ];
  static const List<String> LIST_PAYMENT_OUT = [
    '',
    'Chi đối tác',
    'Chi tiền lương',
    'Chi đầu từ văn phòng',
    'Chi tiêu khác'
  ];
  static const List<String> GROUPTYPE_LIST = [
'',
    'Nhân viên',
    'Khách hàng',
    'Nhà cung cấp',
    'Khác'
  ];

}