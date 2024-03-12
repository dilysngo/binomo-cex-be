from decimal import Decimal
from typing import Dict, Union

from core.models.inouts.pair import Pair


class BaseDataSource:
    NAME: str
    MAX_DEVIATION: Union[int, float, Decimal]

    @property
    def data(self) -> Dict[Pair, Decimal]:
        raise NotImplementedError

    def get_latest_prices(self) -> Dict[Pair, Decimal]:
        raise NotImplementedError

    def is_pair_exists(self, pair_symbol) -> bool:
        raise NotImplementedError
