# Build new project named Coupon and make two directories: 'code' and 'data'.
# Copy all data into dir 'data'
# This script 'index' is used to process our data 

# Set your coupon competition directory as the default directory
setwd("~/Documents/Information Science/2015-spring/applied data mining/R/Coupon")

# Load all data 

# Userlist data features:  
# REG_date(Registered date) SEX_ID(Gender) AGE  
# WITHDRAW_DATE(Unregistered date) PREF_NAME(Residential Prefecture) USER_ID_hash(User ID)         
userlist = read.csv2("data/user_list.csv",sep=",",dec =",")

# Coupon_list train and test data features:
# CAPSULE_TEXT(Capsule text) GENRE_NAME(Category name) PRICE_RATE(Discount rate)
# CATALOG_PRICE(List price) DISCOUNT_PRICE(Discount price) DISPFROM(Sales release date) DISPEND(Sales end date)
# DISPPERIOD(Sales period (day)) VALIDFROM(The term of validity starts) VALIDEND(The term of validity ends) VALIDPERIOD(Validity period (day)) 
# USABLE_DATE_MON(Is available on Monday) USABLE_DATE_TUE(Is available on Tuesday) USABLE_DATE_WED(Is available on Wednesday) USABLE_DATE_THU(Is available on Thursday)
# USABLE_DATE_FRI(Is available on Friday) USABLE_DATE_SAT(Is available on Saturday) USABLE_DATE_SUN(Is available on Sunday)
# USABLE_DATE_HOLIDAY(Is available on holiday) USABLE_DATE_BEFORE_HOLIDAY(Is available on the day before holiday) 
# large_area_name(Large area name of shop location) ken_name(Prefecture name of shop) small_area_name(Small area name of shop location)
# COUPON_ID_hash(Coupon ID)
cplist_train = read.csv2("data/coupon_list_train.csv",sep=",",dec =",")
cplist_test = read.csv2("data/coupon_list_test.csv",sep=",",dec =",")

# Coupon_visit_train features:
# PURCHASE_FLG(Purchased flag) PURCHASEID_hash(Purchase ID) I_DATE(View date) PAGE_SERIAL
# REFERRER_hash(Referer) VIEW_COUPON_ID_hash(Browsing Coupon ID) USER_ID_hash(User ID) SESSION_ID_hash(Session ID)
cpvisit_train = read.csv2("data/coupon_visit_train.csv",sep=",",dec =",")

# Coupon_purchase_train features:
# ITEM_COUNT(Purchased item count) I_DATE(Purchase date) SMALL_AREA_NAME(Small area name)
# PURCHASEID_hash(Purchase ID) USER_ID_hash(User ID) COUPON_ID_hash(Coupon ID)
cppruch_train = read.csv2("data/coupon_detail_train.csv",sep=",",dec =",")

# Coupon_area train and test features:
# SMALL_AREA_NAME(Small area name) PREF_NAME(Listed prefecture name) COUPON_ID
cparea_train = read.csv2("data/coupon_area_train.csv",sep=",",dec =",")
cparea_test = read.csv2("data/coupon_area_test.csv",sep=",",dec =",")

# Prefecture_location
prefecture_loc = read.csv2("data/prefecture_locations.csv",sep=",",dec =",")

# Sample_submission 
samsub = read.csv2("data/sample_submission.csv",sep=",",dec =",")

############
process data
############


