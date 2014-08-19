#include <iostream>
#include <assert.h>
#include "sqlite3.h"

using namespace std;

int main(int argc, char** argv)
{
  cout << "gerry.steele@gmail.com\n";
  
  sqlite3 *db;
  char * db_name;
  char *zErrMsg = 0;

  string ctsql = "create table if not exists deltas ( id int primary key not null, delta_name text not null, delta_us int not null )";

  if (argc == 2)
    {
      db_name = argv[1];
    }
  else 
    {
      return -1;
    }

  cout << "DB Name: " << db_name << endl;

  assert (sqlite3_open(db_name, &db) == 0);

  if (sqlite3_exec(db, ctsql.c_str(), NULL, NULL, &zErrMsg) != SQLITE_OK)
    {
      cout << "Error in ctsql: " << zErrMsg << endl;
      goto exit;
    }

  cout << "Table created: " << ctsql << endl;
  
 exit:
  sqlite3_close(db);
}
