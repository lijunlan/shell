#! /bin/bash  
  
# arg1=start, arg2=end, format: %s.%N  
function getTiming() {  
    start=$1i
    end=$2  
     
    start_s=$(echo $start | cut -d '.' -f 1)  
    start_ns=$(echo $start | cut -d '.' -f 2)  
    end_s=$(echo $end | cut -d '.' -f 1)  
    end_ns=$(echo $end | cut -d '.' -f 2)  

# for debug..  
    echo $start  
    echo $end  
  
  
#    time=$(( ( 10#$end_s - 10#$start_s ) * 1000 + ( 10#$end_ns / 1000000 - 10#$start_ns / 1000000 ) ))  
    time=$(( ( $end_s - $start_s ) * 1000 + ( $end_ns / 1000000 - $start_ns / 1000000 ) ))
 
    echo "$time ms"  
}

function access() {

    start=$(date +%s.%N)  

    #curl -X GET http://house-be-manage.focus.cn//spiderMessage/count/checking -H 'Cookie:FOCUS_A_UDIG=SnbsRrwDJjOKVL6sjiIphFhChVCCfwzDQuQUlGSfUPU7jN/2wJ6k8Ilw1INLqbaksKmt5lJJPk6ZDdEnYW2T1DnjFYu6/j+7uhgEUovjnne9pT1nvwTZiyp2yF/I/wgFByzA9uJrrEeaFegRhuB41nQjEqgzXPEfRa6uoRfj7mY='

    #curl -i https://t3.focus-img.cn/xf/zxc/1f325486f5feeb95d8693ca682bac29a.jpg
    time curl -i https://common-ldap.focus.cn/citypermission?city=1
 #   time curl -XPOST 'http://local.focus-dev.cn:8080/spiderInfo/noAuth/create/' -d  'params={"albumData":[{"photoType":1,"photoUrl":"/xf/xc/69572407e5340beb8fd70c8756f5ca89.jpg"},{"photoType":1,"photoUrl":"/xf/xc/1a951cfc6a0a2871c3c660f0513eaffa.jpg"},{"photoType":0,"photoUrl":"/xf/xc/b86a854ffd4fd1ad9f39d134331a0588.jpg"},{"photoType":1,"photoUrl":"/xf/xc/8e0be35b8631d90db8dce03ba825d9db.jpg"},{"photoType":0,"photoUrl":"/xf/xc/6cd2b5eccdb94edff8fd9abd741e45e6.jpg"}],"basicData":{"cityId":230,"constructTypes":"1,5","districtId":1954,"geoLat":"19.991765444555","geoLng":"110.175749653962","landUseYear":70,"projAddress":"海口市秀英区粤海大道与南海大道交汇处","projDecorations":"1","projDesc":"富力盈溪谷，位处城市主干道粤海大道与南海大道交汇处，东临西海岸新城市，西联海口火车站、盈滨半岛，滨海休闲及度假酒店群立。富力盈溪谷海口那甲项目地块容积率0.38，开发面积约为17万平方米。项目充满西班牙种植庄园风情，是典型的低密度、低容积率产品；目前，西海岸已经拥有包含喜来登等酒店在内的多家大酒店、贵族游艇会、轮滑赛道、印象海南岛等多元配套设施，旅游度假区形象日趋完美。富力盈溪谷在舒享西海岸美丽景致的同时，离尘不离城的卓越区位海南富力项目北京展销厅地址：北京市朝阳区双井富力城富力十号销售中心电话：010—59037100","projFeatures":"10,6","projName":"富力盈溪谷","propertyCompany":"暂无资料","propertyManagementFee":5.8,"propertyTypes":"0","provinceId":21},"cityId":230,"launchData":{"deliInfoList":[{"deliveryDay":30,"deliveryDesc":"二期独栋别墅、河边联排别墅、双拼别墅共50套","deliveryMonth":10,"deliveryYear":2014},{"deliveryDay":1,"deliveryDesc":"二期洋房","deliveryMonth":6,"deliveryYear":2013}]},"layoutData":[{"avgPrice":660,"bedroom":7,"buildingArea":300,"freeArea":0,"insideArea":0,"kitchen":1,"layoutDesc":"1、户型方正，布局合理，不浪费空间\\n2、多阳台设计，赠送面积大","layoutFeature":"17,2,16,","layoutName":"别墅DA型二层户型","livingroom":2,"photoUrl":"/xf/hx/a35389d933007dcd6b3985785ced2606.jpg","priceType":2,"saleStatus":1,"washroom":5},{"avgPrice":484,"bedroom":5,"buildingArea":220,"freeArea":0,"insideArea":0,"kitchen":1,"layoutDesc":"1、户型方正，布局合理，不浪费空间\\n2、多阳台设计，赠送面积大","layoutFeature":"17,2,16,","layoutName":"别墅MA型首层户型","livingroom":3,"photoUrl":"/xf/hx/2c493ab6bf6f3b61b489ab2528fbf95e.jpg","priceType":2,"saleStatus":1,"washroom":5},{"avgPrice":616.88,"bedroom":6,"buildingArea":280.4,"freeArea":0,"insideArea":0,"kitchen":1,"layoutDesc":"1、户型方正，布局合理，不浪费空间\\n2、多阳台设计，赠送面积大","layoutFeature":"17,2,5,16,","layoutName":"别墅DE型首层户型","livingroom":3,"photoUrl":"/xf/hx/7a87c5d77cb5394d871385d4447ffee0.jpg","priceType":2,"saleStatus":1,"washroom":6}],"licenceData":[{"licenceNo":"(2010)海房预字(0089)号"},{"licenceNo":"[2011]海房预字(0081)号"},{"licenceNo":"(2010)海房预字(0061)号"}],"planData":{"buildingArea":171911,"greeningRate":55,"landArea":452859,"parkingSpace":"1：1配备","plotRatio":0.38,"totalHouseNumber":902},"projectName":"富力盈溪谷","provinceId":21,"saleData":{"saleAddressList":[{"saleAddress":"海口市西海岸新区粤海大道与南海大道交汇处；北京市朝阳区双井富力城富力十号销售中心","saleCityId":230,"salePhones":"400-890-0000839972","saleProvinceId":21,"saleVDistrictId":1954}],"salePhase":2,"salePriceList":[{"avgPrice":22000,"priceDesc":"双拼/联排别墅220平，价格表单价22000-30000元","priceTime":1493308800000,"priceType":1},{"avgPrice":20000,"priceDesc":"独栋别墅的户型有282㎡，298㎡和516㎡。独栋别墅均价为20000元/㎡","priceTime":1493222400000,"priceType":1},{"avgPrice":16000,"priceDesc":"折后单价16000-17000元（包含3000元/平非毛坯），总价354万起，赠送花园115平-140平花园；","priceTime":1490198400000,"priceType":1}],"saleStatus":1},"spid":355282,"targetUrl":"http://835515.fang.com","trafficData":{"trafficSituation":"海口西海岸粤海大道与南海大道交汇处，可于西秀镇乘坐57路, 在中商农产品市场东门站下车步行350米至富力盈溪谷。"}}' 

    echo ''

    end=$(date +%s.%N)  

#    getTiming $start $end  
}

function accessMore() {
    for((i=0; i<3; i++)) 
    do
        access & 
    done
}

accessMore
