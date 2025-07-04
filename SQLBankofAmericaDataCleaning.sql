Select * 
From Data$

-- Removing Time from Date Submitted and Date Received

Alter Table Data$
Alter Column [Date Submitted] Date

Alter Table Data$
Alter Column [Date Received] Date; 


-- Ordering Complaint ID 

Select * 
From Data$
Order by  [Complaint ID] ASC; 


-- Checking for duplicate entries 

Select *
From Data$
Where [Complaint ID] IN (
    Select [Complaint ID]
    From Data$
    Group by [Complaint ID]
    Having COUNT(*) > 1
);

--Count for Null

SELECT
    SUM(CASE WHEN [Complaint ID] IS NULL OR [Complaint ID] = '' THEN 1 ELSE 0 END) AS Null_ComplaintID,
    SUM(CASE WHEN [Submitted via] IS NULL OR [Submitted via] = '' THEN 1 ELSE 0 END) AS Null_SubmittedVia,
    SUM(CASE WHEN [Date submitted] IS NULL OR [Date submitted] = '' THEN 1 ELSE 0 END) AS Null_DateSubmitted,
    SUM(CASE WHEN [Date received]IS NULL OR [Date received] = '' THEN 1 ELSE 0 END) AS Null_DateReceived,
    SUM(CASE WHEN [State] IS NULL OR [State] = '' THEN 1 ELSE 0 END) AS Null_State,
    SUM(CASE WHEN [Product] IS NULL OR [Product] = '' THEN 1 ELSE 0 END) AS Null_Product,
    SUM(CASE WHEN [Sub-product] IS NULL OR [Sub-product] = '' THEN 1 ELSE 0 END) AS Null_SubProduct,
    SUM(CASE WHEN [Issue] IS NULL OR [Issue] = '' THEN 1 ELSE 0 END) AS Null_Issue,
    SUM(CASE WHEN [Sub-issue] IS NULL OR [Sub-issue] = '' THEN 1 ELSE 0 END) AS Null_SubIssue,
    SUM(CASE WHEN [Company public response] IS NULL OR [Company public response] = '' THEN 1 ELSE 0 END) AS Null_PublicResponse,
    SUM(CASE WHEN [Company response to consumer] IS NULL OR [Company response to consumer] = '' THEN 1 ELSE 0 END) AS Null_ConsumerResponse,
    SUM(CASE WHEN [Timely response?] IS NULL OR [Timely response?] = '' THEN 1 ELSE 0 END) AS Null_TimelyResponse
FROM Data$;



-- Checking why certain values have nulls/looking for correlations

SELECT *
FROM Data$
WHERE 
    [Complaint ID] IS NULL OR [Complaint ID] = '' OR
    [Submitted via] IS NULL OR [Submitted via] = '' OR
    [Date submitted] IS NULL OR [Date submitted] = '' OR
    [Date received] IS NULL OR [Date received] = '' OR
    [State] IS NULL OR [State] = '' OR
    [Product] IS NULL OR [Product] = '' OR
    [Sub-product] IS NULL OR [Sub-product] = '' OR
    [Issue] IS NULL OR [Issue] = '' OR
    [Sub-issue] IS NULL OR [Sub-issue] = '' OR
    [Company public response] IS NULL OR [Company public response] = '' OR
    [Company response to consumer] IS NULL OR [Company response to consumer] = '' OR
    [Timely response?] IS NULL OR [Timely response?] = '';


--All NULLs in the "Sub-Issue" columns reflect that there isn't another menu option to select after the main issue page. This just means that the main issue is specific enough to not need a sub issue. 
-- Company Public response is NULL when the solutions are straight forward. 
--When "Company Response to Consumer" column is In Progress all the "Timely Response" columns that corresponds to that are NULLs.


