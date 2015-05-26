class Solution < AbstractObject

    abstractmethod :feasible?

    abstractmethod :complete?

    abstractmethod :objective

    abstractmethod :bound

    abstractmethod :successors

end
