String arabicTransalartTriger(String tr) {
  switch (tr) {
    case "Annual":
      return "سنوي";
    case "Monthly":
      return "شهري";
    case "Until Balance":
      return "الي حد الرصيد";
    case "Attendance Event":
      return "حدث حضور";
    case "Leave Event":
      return "حدث اجازة";
    case "Date":
      return "تاريخ";
    case "On Date - Until Balance":
      return "في تاريخ - الي حد الرصيد";
    default:
      return tr;
  }
}

String arabicTransalartType(String t) {
  switch (t) {
    case "Basic":
      return "أساسي";
    case "Add-On":
      return "اضافة";
    case "Leaves":
      return "أجازات";
    case "Permissions":
      return "أذونات";
    case "Temporary":
      return "مؤقت";
    default:
      return t;
  }
}

String arabicTransalaryState(String states) {
  switch (states) {
    case "Processed":
      return "تمت المعالجة";
    case "Under Review":
      return "قيد المراجعة";
    default:
      return states;
  }
}

//
String arabicTranCurrency(String c) {
  switch (c) {
    case "Kuwaiti Dinar":
      return "دينار كويتي";
    default:
      return c;
  }
}

String getLeavStateFromValue(int states, bool isEnglish) {
  if (isEnglish) {
    switch (states) {
      case -1:
        return "Pending";
      case 862910000:
        return "Approved by Manager";
      case 862910001:
        return "Rejected by Manager";
      case 862910002:
        return "Approved by Attendance Department";
      case 862910003:
        return "Rejected by Attendance Department";
      default:
        return "N/A";
    }
  } else {
    switch (states) {
      case -1:
        return "منتظر";
      case 862910000:
        return "اعتماد المسؤل المباشر";
      case 862910001:
        return "رفض المسؤل المباشر";
      case 862910002:
        return "اعتماد قسم الدوام"; //
      case 862910003:
        return "رفض قسم الدوام";
      default:
        return "N/A";
    }
  }
}

String arabicTranleavPermissionState(String states) {
  switch (states) {
    case "Pending":
      return "منتظر";
    case "Approved by Manager":
      return "اعتماد المسؤل المباشر";
    case "Rejected by Manager":
      return "رفض المسؤل المباشر";
    case "Approved by Attendance Department":
      return "اعتماد قسم الدوام";
    case "Rejected by Attendance Department":
      return "رفض قسم الدوام";
    default:
      return states;
  }
}

String arabicTranPermissionState(String states) {
  switch (states) {
    case "Pending":
      return "منتظر";
    case "Approved":
      return "تمت الموافقة";
    case "Rejected":
      return "تم الرفض";
    default:
      return states;
  }
}

String arabicTranAttendType(String states) {
  switch (states) {
    case "Present":
      return "حضور";
    case "Attendance":
      return "حضور";
    case "Absent":
      return "غياب";
    case "Absence":
      return "غياب";
    case "Weekend":
      return "عطلة الاسبوع";
    case "Holiday":
      return "عطلة";
    case "Public Holiday":
      return "عطلة رسمية";
    case "On Leave":
      return "في اجازة";
    case "Non-Contracted":
      return "غير متعاقد";
    case "Expire-Contracted":
      return "انتهي العقد";
    case "Late":
      return "تاخير";
    case "Early Leave":
      return "مغادرة مبكرة";
    case "Leave Among Day":
      return "مغادرة وسط اليوم";
    case "Overtime":
      return "وقت اضافي";
    case "on Mission":
      return "في مهمة";
    default:
      return states;
  }
}

String arabicTranweekState(String states) {
  switch (states) {
    case "Attended":
      return "حضور";
    case "Holiday":
      return "عطلة";
    case "Weekend":
      return "عطلة الاسبوع";
    default:
      return states;
  }
}

String arabicTranweekDays(String day) {
  switch (day) {
    case "Sun":
      return "الاحد";
    case "Mon":
      return "الاثنين";
    case "Tue":
      return "الثلاثاء";
    case "Wed":
      return "الاربعاء";
    case "Thu":
      return "الخميس";
    case "Fri":
      return "الجمعة";
    case "Sat":
      return "السبت";

    default:
      return day;
  }
}

String arabicTranMaterialStat(String s) {
  switch (s) {
    case "Single":
      return "أعزب";
    case "Married":
      return "متزوج";
    case "Widowed":
      return "أرمل";
    case "Separated":
      return "منفصل";
    case "Divorced":
      return "مطلق";
    default:
      return s;
  }
}

String arabicTranGender(String g) {
  switch (g) {
    case "Male":
      return "ذكر";
    case "Female":
      return "أنثي";
    default:
      return g;
  }
}
