#test1

code <- ' Plot()
 {
  Sequence("1")
  {
   R_Date("Wk-36276", 671, 29);
   R_Date("Wk-36272", 712, 32);
   R_Date("Wk-36280", 807, 33);
  };
 };
 Options()
 {
  Curve="ShCal13.14c";
 };'
file <- executeOxcalScript(code)
text <- readOxcalOutput(file)
data <- parseOxcalOutput(text)
str(data)
print(data)
