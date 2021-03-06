import 'package:hospitals/models/advisors_model.dart';
import 'package:hospitals/models/axises_model.dart';
import 'package:hospitals/models/civil_protection_model.dart';
import 'package:hospitals/models/constructor_model.dart';
import 'package:hospitals/models/creators_model.dart';
import 'package:hospitals/models/departement_model.dart';
import 'package:hospitals/models/don_or_not_model.dart';
import 'package:hospitals/models/exchange_model.dart';
import 'package:hospitals/models/filter_dep_model.dart';
import 'package:hospitals/models/governments_model.dart';
import 'package:hospitals/models/hospital_inputs_model.dart';
import 'package:hospitals/models/hospitals_model.dart';
import 'package:hospitals/models/sectionType_model.dart';
import 'package:hospitals/models/water_state_model.dart';
import 'package:hospitals/models/workTypes_model.dart';

List<AxisesModel> axisesList = <AxisesModel>[];
List<GovernmentsModel> governmentsList = <GovernmentsModel>[];
List<DeprtementModel> departmentList = <DeprtementModel>[];
List<FilterDepModel> filterDepartmentList = <FilterDepModel>[];
List<HospitalsModel> hospitalsList = <HospitalsModel>[];
List<sectiontypeModel> sectionTypeList = <sectiontypeModel>[];
List<WorkTypesModel> workTypesList = <WorkTypesModel>[];
List<HospitalInputsModel> hospitalInputsList = <HospitalInputsModel>[];
List<ConstructorsModel> contractorsList = <ConstructorsModel>[];
List<CivilProtectionModel> CivilProtectionList = <CivilProtectionModel>[];
List<DonOrNotModel> DonOrNotModelList = <DonOrNotModel>[];
List<WaterStateModel> WaterStateModelList = <WaterStateModel>[];
List<ExchangeModel> ExchangeModelList = <ExchangeModel>[];
List<CreatorsModel> CreatorsList = <CreatorsModel>[];
List<AdvisorsModel> AdvisorsList = <AdvisorsModel>[];
String contractors_id;
String CivilProtection_id;
String Advisors_id;
String Exchange_id;
String DonOrNotElectric_id;
String DonOrNotSupply_id;
String DonOrNotInstallation_id;
String WaterState_id;
String WorkTypeGlobal;
var dataView;
int idView;
String Logo = "assets/images/logo.png";
// String dateFormat =
//     "${CreatorsList[widget.index].updatedAt.split("T")[0]} , ${CreatorsList[widget.index].updatedAt.split("T")[1].split(".")[0]}";

//--------------------------------------
int depIdGlobal;
String govGlobal;
String headerGlobal;
String depNameGlobal;
String sectionNameGlobal;
//--------------------------------------

List testList;
