# Bank of America Financial Consumer Complaints Analysis

Table of Contents
- [Project Background](https://github.com/DanielZ08/Bank-of-America-Consumer-Complaints/tree/main?tab=readme-ov-file#project-background)
- [Data Structure & Initial Checks](https://github.com/DanielZ08/Bank-of-America-Consumer-Complaints/tree/main?tab=readme-ov-file#data-structure--initial-checks)
- [Executive Summary](https://github.com/DanielZ08/Bank-of-America-Consumer-Complaints/tree/main?tab=readme-ov-file#executive-summary)
  - [Overview of Findings](https://github.com/DanielZ08/Bank-of-America-Consumer-Complaints/tree/main?tab=readme-ov-file#overview-of-findings)
- [Insights Deep-Dive](https://github.com/DanielZ08/Bank-of-America-Consumer-Complaints/tree/main?tab=readme-ov-file#insights-deep-dive)
  - [Product Based Complaint Distribution](https://github.com/DanielZ08/Bank-of-America-Consumer-Complaints/tree/main?tab=readme-ov-file#product-based-complaint-distribution)
  - [Annual Complaint Trends](https://github.com/DanielZ08/Bank-of-America-Consumer-Complaints/tree/main?tab=readme-ov-file#annual-complaint-trends)
  - [Submission Method Analysis](https://github.com/DanielZ08/Bank-of-America-Consumer-Complaints/tree/main?tab=readme-ov-file#submission-method-analysis)
  - [Geographic Breakdown](https://github.com/DanielZ08/Bank-of-America-Consumer-Complaints/tree/main?tab=readme-ov-file#geographic-breakdown)
- [Recommendations](https://github.com/DanielZ08/Bank-of-America-Consumer-Complaints/tree/main?tab=readme-ov-file#recommendations)
- [Assumptions and Caveats](https://github.com/DanielZ08/Bank-of-America-Consumer-Complaints/tree/main?tab=readme-ov-file#assumptions-and-caveats)

## Project Background
Bank of America (NYSE: BAC) is one of the largest financial institutions in the world, serving over 67 million customers across consumer banking, corporate finance, wealth management, and investment services. Headquartered in Charlotte, North Carolina, it operates in more than 35 countries with total assets exceeding $3 trillion. Founded in 1904 and restructured through a major merger in 1998, Bank of America is known for its strong digital presence, serving over 40 million active digital users. Under CEO Brian Moynihan, the company focuses on responsible growth, sustainability, and financial innovation.

Being one of the largest financial institutions in the United States, As a data-driven enterprise, Bank of America places strong emphasis on leveraging customer and operational data to improve service quality, client satisfaction, and regulatory compliance. Given the scale of its operations and customer base, the company receives a high volume of consumer complaints — offering a rich source of insight into service performance and areas for improvement. This project explores historical complaint data related to Bank of America, with the objective of identifying common issues, evaluating the timeliness of company responses, and understanding how complaint volume varies by product, region, and year. 

Insights and recommendations are provided on the following key areas:
- **Product-Based Complaint Distribution:** A breakdown of total complaints and their percentage share across key product categories (e.g., Checking/Savings, Credit Card, Mortgage).
- **Annual Complaint Trends:** A year-over-year view of total complaints to identify surges or declines over time.
- **Submission Method Analysis:** An examination of how complaints were submitted (e.g., web, phone, email), and which channels are most commonly used.
- **Geographic Breakdown:** A state-level visualization of complaints to identify regional hotspots.

An interactive Tableau dashboard can be downloaded [here](https://public.tableau.com/views/BankofAmericaFinancialConsumerComplaints/BankofAmericaFinancialConsumerComplaints?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

The original dataset can be found [here](https://www.consumerfinance.gov/data-research/consumer-complaints/#download-the-data)

The cleaned excel file can be found [here](https://github.com/DanielZ08/Bank-of-America-Consumer-Complaints/blob/main/15832070.xlsx)

Targeted SQL queries regarding various business questions can be found [here](https://github.com/DanielZ08/Bank-of-America-Consumer-Complaints/blob/main/SQLBankofAmericaDataCleaning.sql)


## Data Structure & Initial Checks 
Bank of America's Database structure as seen below consists of six tables: Complaint, Sub-Product, Product, Issue, CompanyPublicResponse, Issue. 
<img width="1536" height="1024" alt="Image" src="https://github.com/user-attachments/assets/d58d1aa9-0110-47a2-af0c-28ef937a3a32" /> 
Bank of America Dataset ERD


## Executive Summary
### Overview of Findings
This analysis presents key findings from 62,516 consumer complaints filed with Bank of America from 2017 to 2023, offering insights into complaint volume trends, product-specific issues, regional distribution, and request channels. The data was processed using SQL and visualized in Tableau to ensure clarity and actionable insights.

The largest proportion of complaints relate to Checking/Savings accounts (39.69%) and Money Services (31.43%), followed by Credit Services (12.33%), Loans & Mortgages (12.17%), and Debt Collection (4.38%). Complaint volumes increased steadily from 2017, peaking in 2022 (12,236), before declining in 2023 (9,176). Geographically, California recorded the highest complaint count (13,709), indicating regional concentration and potential service bottlenecks.

Submission methods reveal a heavy reliance on digital channels, with web-based entries comprising the majority of all submissions, while legacy channels such as fax and email were negligible. This trend reflects Bank of America’s digital maturity and underscores the importance of optimizing online support systems.

These insights support strategic priorities such as enhancing service transparency, strengthening digital resolution pipelines, and targeting product areas with high complaint recurrence. By leveraging this data-driven approach, Bank of America can proactively address customer pain points, improve regulatory compliance, and reinforce its commitment to customer-centric banking.

Below is the page from the Tableau dashboard which are included throughout the report. The entire interactive dashboard can be downloaded [here](https://public.tableau.com/views/BankofAmericaFinancialConsumerComplaints/BankofAmericaFinancialConsumerComplaints?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

<img width="1451" height="883" alt="Image" src="https://github.com/user-attachments/assets/f9b305b2-b656-4f41-b7f7-67a193750fc2" />


## Insights Deep-Dive
### Product-Based Complaint Distribution
- Checking/Savings accounts represent the highest complaint volume, totaling 24,814 cases—39.69% of the entire 62,516 complaint database. This suggests that Bank of America’s core banking services face the most customer friction, likely due to their widespread usage and critical role in day-to-day transactions.
- Money Services follow closely with 19,650 complaints (31.43%). Despite being a secondary product, its high share of complaints raises concerns about issues in areas such as wire transfers, money orders, or remittances, which may involve third-party dependencies or delays.
- Credit Services (7,710 complaints) and Loans & Mortgages (7,606) each contribute just over 12% of total complaints. The near-equal volume between these two categories indicates comparable levels of dissatisfaction and suggests the need for closer scrutiny of loan servicing practices and credit card management.
- Debt Collection issues constitute only 2,736 complaints (4.38%), yet this segment's high regulatory scrutiny means even a small percentage poses reputational and legal risks. It's worth noting this product’s complaints have declined over time, signaling possible improvements or a shift in collection strategy.
- Overall, the top three categories—Checking/Savings, Money Services, and Credit Services—combine for 83.45% of all complaints. Focusing on service recovery and process enhancements in these areas could substantially reduce total complaint volume and improve Net Promoter Scores (NPS).

Due to the volume of visualizations included, static images will not be provided in this report. Instead, a link to the interactive dashboard is available below for comprehensive exploration [here](https://public.tableau.com/views/BankofAmericaFinancialConsumerComplaints/BankofAmericaFinancialConsumerComplaints?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)  

### Annual Complaint Trends
- Total annual complaints grew significantly from 2,032 in 2017 to a high of 5,579 in 2022 (+174.5%). While complaints dipped slightly to 4,102 in 2023, the long-term trend points to a growing customer service challenge as the bank scaled digital operations and faced economic headwinds.
- Money Services complaints rose from 1,264 in 2017 to a peak of 4,472 in 2022 (+253.7%), before falling to 3,022 in 2023. This suggests a correlation with increasing digital and international transaction volumes during and post-pandemic, followed by improvements or reduced usage in 2023.
- Credit Services complaints grew steadily from 465 in 2017 to 1,659 in 2022, a 257% increase. Though slightly reduced in 2023 (1,315), elevated levels indicate persistent friction in credit card usage, billing disputes, or credit reporting—areas sensitive to consumer trust.
- Loans & Mortgages complaints dropped from 1,323 in 2017 to just 493 in 2023 (–62.7%), with a consistent downward trend. This may reflect improvements in mortgage servicing automation or a decline in origination volumes due to rising interest rates post-2021.
- Debt Collection complaints peaked at 670 in 2021, then fell to 244 by 2023 (–63.6%). This drop aligns with shifting internal collection practices, increased digital self-service, or outsourced collections—implying a potential success story in risk management.

Due to the volume of visualizations included, static images will not be provided in this report. Instead, a link to the interactive dashboard is available below for comprehensive exploration [here](https://public.tableau.com/views/BankofAmericaFinancialConsumerComplaints/BankofAmericaFinancialConsumerComplaints?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)  

### Submission Method Analysis
- Web-based submissions dominate all categories, reaching as high as 95.71% in Credit Services and 89.77% in Debt Collection. This trend confirms that consumers prefer digital self-service channels and validates investments in online complaint portals and mobile apps.
- Referral-based complaints are the second most used channel, accounting for 25.16% in Checking/Savings and 25.93% in Loans & Mortgages. These high percentages suggest that many customers are directed by third parties (e.g., legal counsel, advocacy groups), potentially indicating unresolved issues that escalated beyond first contact.
- Phone complaints are relatively low, but notable in Checking/Savings (10.34%) and Loans & Mortgages (8.07%). The lower figures in Credit Services (1.49%) imply customers might avoid calling due to complex IVRs or long wait times. Improving phone support usability could reduce digital escalation.
- Postal and fax submissions together account for less than 5% in all categories. While this is expected due to digitization, the slightly higher use of postal submissions in Debt Collection (2.96%) and Loans & Mortgages (4.42%) may reflect legal documentation requirements or limited digital access among vulnerable consumers.
- Email usage is practically negligible across the board (≤0.01%), signaling that email is either not offered or discouraged as a complaint channel. Consider reassessing this channel's visibility or reinforcing preferred submission paths for consistency.

Due to the volume of visualizations included, static images will not be provided in this report. Instead, a link to the interactive dashboard is available below for comprehensive exploration [here](https://public.tableau.com/views/BankofAmericaFinancialConsumerComplaints/BankofAmericaFinancialConsumerComplaints?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)  

### Geographic Breakdown
- California consistently ranks as the top complaint-generating state, reporting 5,385 complaints in Checking/Savings and 5,099 in Money Services. This is likely due to population size, but the volume also suggests a need for targeted customer experience audits in high-density regions.
- Texas follows as the second-most affected state, with 2,158 Checking/Savings complaints and 1,243 in Money Services. These numbers reinforce the strategic importance of the Southwest market and the need for localized service teams or escalation protocols.
- Florida ranks third in multiple product categories: 1,267 Checking/Savings complaints, 1,575 in Credit Services, and 407 in Loans & Mortgages. This implies elevated friction in the Southeast and may warrant review of branch operations, especially for retired or multilingual demographics.
- New York (1,538 Checking/Savings complaints) and New Jersey (867) round out the top five complaint-heavy states. These regions have a high concentration of urban customers and likely reflect issues with volume-based service bottlenecks or complex products.
- In contrast, low-population states like Wyoming, Montana, and North Dakota report fewer than 10 complaints each in Credit Services, suggesting minimal exposure. While these are not red flags, they may also highlight gaps in outreach, digital adoption, or survey visibility in rural areas.

Due to the volume of visualizations included, static images will not be provided in this report. Instead, a link to the interactive dashboard is available below for comprehensive exploration [here](https://public.tableau.com/views/BankofAmericaFinancialConsumerComplaints/BankofAmericaFinancialConsumerComplaints?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)  

## Recommendations: 
Based on the uncovered insights, the following recommendations have been provided:
- **Expand Digital Self-Service and Chat Support for Checking/Savings & Money Services:** Since Checking/Savings and Money Services together account for over 70% of all complaints, prioritize enhancements in digital support tools for these products. Deploy AI-driven FAQs, 24/7 chatbots, and real-time transaction alerts to proactively resolve common issues such as overdraft confusion, transaction holds, or fund delays.
- **Implement a Tiered Response SLA Based on Complaint Severity & Channel:** With web accounting for over 60% of all submissions—and 95%+ for Credit Services—develop a tiered complaint resolution protocol with time-bound service-level agreements (SLAs) based on product and submission channel. For example, ensure top-tier products like Checking/Savings are resolved within 48 hours if submitted online, with priority routing for high-value clients.
- **Optimize Customer Support Scripts & Training in High-Volume States:** California, Texas, and Florida account for over 30% of total complaints. Conduct regional audits of frontline support performance and retrain staff using complaint-specific scenarios. Pair this with localized escalation protocols to speed up issue resolution and reduce repeat contact rates.
- **Introduce Personalized Alerts for Common Triggers:** Implement opt-in SMS or email alerts to notify users about critical actions such as missed payments, deposit holds, or fees. These real-time updates would particularly reduce friction in Credit Services and Loans & Mortgages, where complaints frequently stem from missed or unclear communication.
- **Enhance Referral Partner Oversight & Integration:** Referral-based submissions exceed 25% in multiple categories, indicating unresolved issues being escalated by legal or third-party representatives. Formalize communication and compliance review with referral partners and provide them access to a secure resolution portal to streamline dispute closure.
- **Consolidate and Simplify Money Service Offerings:** The 19,650 complaints tied to Money Services suggest fragmented experiences across wires, transfers, and money orders. Create a unified digital dashboard with transparent fee structures, real-time tracking, and refund mechanisms to reduce ambiguity and boost confidence.
- **Monitor Year-over-Year Complaint Surge Flags:** Use anomaly detection tools to monitor year-over-year complaint spikes, such as the 174% increase from 2017 to 2022. Equip CX teams to trigger root-cause analyses for any category that experiences over a 15% year-on-year surge and launch corrective actions within 30 days.
- **Reinforce Compliance & Clarity in Credit Reporting:** With a 257% increase in Credit Services complaints from 2017–2022, invest in clearer credit documentation, transparent dispute handling timelines, and integration with credit bureaus to reduce erroneous reports and associated grievances.
- **Launch a Complaint Closure Survey with NPS Tracking:** Introduce a two-question post-resolution survey (e.g., Was your issue resolved? How likely are you to recommend us?) to capture Net Promoter Score (NPS) at the complaint level. This allows for customer sentiment tracking and performance benchmarking of service agents.
- **Reintroduce or Reposition Underutilized Channels Like Email Support:** With email complaints making up just 0.01% of submissions, evaluate whether email should be reactivated or better integrated into customer communication options for users who prefer asynchronous communication.

## Assumptions and Caveats: 
- Upon review of the dataset, there are seven instances where the "Sub-Product" field contains NULL values. Preliminary analysis does not reveal a consistent pattern or correlation with other fields (such as Product type, Issue, or Submission method) that would suggest a systemic cause or definable relationship. Given the isolated nature of these occurrences, it is reasonable to infer that these NULL entries may be the result of either a user omission—where the individual submitting the complaint opted not to select a sub-product—or a minor internal processing error within the complaint intake system. As the volume of these NULL values represents a negligible percentage of the total dataset, their presence does not significantly impact the overall integrity or usability of the data. However, they are worth flagging for further investigation should similar discrepancies increase in frequency over time.
- The NULL values present in the "Sub-Issue" column primarily indicate that, for many complaint records, there is no corresponding sub-category beyond the main issue selected. This typically occurs when the primary issue selected by the consumer is specific and detailed enough that it does not require further categorization through a sub-issue. As such, the absence of a sub-issue should not be interpreted as missing data but rather as an intentional design choice within the complaint taxonomy.
- For the "Company Public Response" field, NULL values are frequently observed in cases where the resolution to the complaint is routine, standardized, or self-evident. In such instances, companies may opt not to provide an additional public-facing comment or rationale, particularly when the matter can be resolved without further clarification. These NULL entries should be understood as implicit resolutions rather than data quality gaps.
- In the "Company Response to Consumer" column, entries marked as "In Progress" often correlate with NULL values in the "Timely Response?" field. This is because the timeliness of a response cannot be determined until a resolution is finalized. Therefore, the NULLs in the "Timely Response?" column are a reflection of the ongoing nature of these cases rather than incomplete or erroneous data.

<img width="1245" height="731" alt="Image" src="https://github.com/user-attachments/assets/fa5af8fd-530c-4120-93b7-307170fc141d" />
<img width="1208" height="39" alt="Image" src="https://github.com/user-attachments/assets/d1c605ad-39db-4789-86c8-4e612ee65f11" />
  
