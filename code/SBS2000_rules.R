# validation rules for the SBS2000 data set.
# values are thousands of euros
# By Vi the Validator, 2021.

# range checks
staff >= 0
turnover >= 0
other.rev >= 0
total.costs >= 0

# Balance check.
turnover + other.rev == total.rev

# People don't usually work for free in retail
if (staff > 0) staff.costs >= 0

# Paid VAT should be always positive

vat > 0

# If there are losses, they should be relative to the size of the org

if (profit < 0) profit / staff > -2 

# Is the average profit positive

mean(profit) > 0

# Does turnover - cost equal profit

turnover - total.costs == profit
