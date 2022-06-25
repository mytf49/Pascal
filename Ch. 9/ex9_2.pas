{Extract User ID and Domain in Email Address}

program ex9_2;

var email, domain, userid: string;

begin

write('Enter an email address: '); readln(email);

userid:= copy(email, 1, pos('@', email) - 1);
domain:= copy(email, pos('@', email) + 1, length(email)  + 1 - pos('@', email));

writeln('User ID is ', userid);
writeln('Domain name is ', domain);

end.