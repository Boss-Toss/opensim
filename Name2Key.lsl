//start_unprocessed_text
/*string black_db_key2name_service = "";
key QID;
 
string Name;
key UUID;
 
llGetKey2Name(key UUID)
{
    QID = llHTTPRequest(black_db_key2name_service+llEscapeURL((string)UUID), [], "");
}
 
default
{
    state_entry()
    {
        llListen(PUBLIC_CHANNEL, "", llGetOwner(), "");
    }
    listen(integer channel, string name, key id, string str)
    {
        UUID = id;
        llGetKey2Name(UUID);
    }
    http_response(key req, integer status, list meta, string body)
    {
        if(req == QID && status == 200)
        {
            Name = llStringTrim(body, STRING_TRIM);
            if(!llStringLength(Name))/|/ if the length is zero
            {
                /|/None found
            }
            else
            {
                llOwnerSay((string)UUID + "'s name = "+Name);
            }
        }
    }
}*/
//end_unprocessed_text
//nfo_preprocessor_version 0
//program_version Firestorm-Releasex64 6.5.3.65658 - Boss Toss
//last_compiled 06/05/2023 15:13:18
//mono




string black_db_key2name_service = "";
key QID;
 
string Name;
key UUID;
 
llGetKey2Name(key UUID)
{
    QID = llHTTPRequest(black_db_key2name_service+llEscapeURL((string)UUID), [], "");
}
 
default
{
    state_entry()
    {
        llListen(PUBLIC_CHANNEL, "", llGetOwner(), "");
    }
    listen(integer channel, string name, key id, string str)
    {
        UUID = id;
        llGetKey2Name(UUID);
    }
    http_response(key req, integer status, list meta, string body)
    {
        if(req == QID && status == 200)
        {
            Name = llStringTrim(body, STRING_TRIM);
            if(!llStringLength(Name))
            {
                
            }
            else
            {
                llOwnerSay((string)UUID + "'s name = "+Name);
            }
        }
    }
}
