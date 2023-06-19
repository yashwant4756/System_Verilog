class Days;
typedef enum {SUN, MON, TUE, WED,THU, FRI, SAT} DAYS_E;
DAYS_E choices[$];
rand DAYS_E choice;
constraint cday {choice inside choices;}
endclass
module test;
Days days;
initial 
  begin
days = new;
days.choices = '{Days::SUN, Days::SAT};
    repeat(4) begin
assert (days.randomize());
$display("Random weekend day %s\n", days.choice.name);
    end
days.choices = '{Days::MON, Days::TUE, Days::WED,
Days::THU, Days::FRI};
    repeat(9) begin 
assert (days.randomize());
$display("Random week day %s", days.choice.name);
    end
end
endmodule
