# SQL Server Tutorial

## Querying data
    SELECT - show you how to query data

## Sorting data
    ORDER BY – sort the result 
    
## Limiting rows
    OFFSET FETCH – limit the number of rows 
    SELECT TOP – limit the number of rows or percentage of rows returned in a query’s result

## Filtering data
    DISTINCT  – select distinct values in one or more columns of a table.
    WHERE – filter rows in the output of a query
    AND – combine two Boolean expressions and return true if all expressions are true.
    OR–  combine two Boolean expressions and return true if either of the conditions is true.
    IN – check whether a value matches any value in a list or a subquery.
    BETWEEN – test if a value is between a range of values.
    LIKE  –  check if a character string matches a specified pattern.
    Column & table aliases – show you how to use column aliases to change the heading of the query output and table aliases to improve the readability of a query.

## Joining tables 
    Joins – give you a brief overview of joins types in SQL Server including inner join, left join, right join, and full outer join.
    INNER JOIN – select rows from a table that have matching rows in another table.
    LEFT JOIN – return all rows from the left table and matching rows from the right table. If the right table does not have corresponding rows, use NULL for the column values from the right table.
    RIGHT JOIN – learn a reversed version of the left join.
    FULL OUTER JOIN – return matching rows from both left and right tables and rows from each side if no matching rows exist.
    CROSS JOIN – join multiple unrelated tables and create Cartesian products of rows in the joined tables.
    Self join – show you how to use the self-join to query hierarchical data and compare rows within the same table.

## Grouping data
    GROUP BY– group the query result based on the values in a specified list of column expressions.
    HAVING – specify a search condition for a group or an aggregate.
    GROUPING SETS – generates multiple grouping sets.
    CUBE – generate grouping sets with all combinations of the dimension columns.
    ROLLUP – generate grouping sets with an assumption of the hierarchy between input columns.

## Subquery 
    Subquery – show you how to use various subquery types to select data.
    Correlated subquery – introduce you to the correlated subquery concept.
    EXISTS – test for the existence of rows returned by a subquery.
    ANY – compare a value with a single-column set of values returned by a subquery and return TRUE if the value matches any value in the set.
    ALL – compare a value with a single-column set of values returned by a subquery and return TRUE if the value matches all values in the set.
    CROSS APPLY – perform an inner join of a table with a table-valued function or a correlated subquery.
    OUTER APPLY – perform a left join of a table with a table-valued function or a correlated subquery.

## Set Operators
    UNION – combine the result sets of two or more queries into a single result set.
    INTERSECT – return the intersection of the result sets of two or more queries.
    EXCEPT – find the difference between the two result sets of two input queries
