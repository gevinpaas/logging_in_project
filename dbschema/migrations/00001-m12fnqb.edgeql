CREATE MIGRATION m12fnqbauqokyvegsmp46vo2b5d5ispom7wmarcpxujt5gvse7ypwa
    ONTO initial
{
  CREATE TYPE default::User {
      CREATE REQUIRED PROPERTY email: std::str {
          CREATE CONSTRAINT std::exclusive;
      };
      CREATE REQUIRED PROPERTY password_hash: std::str;
  };
};
