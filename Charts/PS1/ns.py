from nsetools import Nse
from pprint import pprint

nse = Nse()
print(nse)
q = nse.get_quote('sbin')
pprint(q)
"""a = nse.get_index_list()
pprint(a)
all_codes = nse.get_stock_codes()
pprint(all_codes)
index_codes = nse.get_index_list()
pprint(index_codes)
adv_dec = nse.get_advances_declines()
pprint(adv_dec)
top_gainers = nse.get_top_gainers()
pprint(top_gainers)
top_losers = nse.get_top_losers()
pprint(top_losers)
c = nse.is_valid_code('infy')
print(c)
d = nse.is_valid_code('inffiy')
print(d)
lot = nse.get_fno_lot_sizes()
pprint(lot)"""