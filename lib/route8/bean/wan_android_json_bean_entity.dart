import 'package:flutterapp01/generated/json/base/json_convert_content.dart';

class WanAndroidJsonBeanEntity with JsonConvert<WanAndroidJsonBeanEntity> {
	List<WanAndroidJsonBeanData> data;
	int errorCode;
	String errorMsg;
}

class WanAndroidJsonBeanData with JsonConvert<WanAndroidJsonBeanData> {
	List<dynamic> children;
	int courseId;
	int id;
	String name;
	int order;
	int parentChapterId;
	bool userControlSetTop;
	int visible;
}
