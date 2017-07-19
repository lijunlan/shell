var r = db.audit_spider_update_message.find({"city_id":73, "whole_data.album":{$ne:null}});
while(r.hasNext()) {
    printjson(r.next());
}
