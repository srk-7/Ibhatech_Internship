#!/usr/bin/env python
# coding: utf-8

# In[27]:


import selenium
from selenium import webdriver


# In[28]:


driver=webdriver.Chrome()


# In[29]:


driver.get("https://www.neuralnine.com/")


# In[32]:


#as we want to get/click on the link that is present we need to know its id
#travesing into books menu
#// means searches in whole page
# links=driver.find_elements("xpath","//a[@href]")
# for i in links:
#     # print(i.get_attribute("innerHTML"))
#     #getting all the anchor tags with the name
#     if "Books" in i.get_attribute("innerHTML"):
#         i.click()
#         break

#Xpath finder chrome extension

links=driver.find_elements("xpath","/html/body/div[1]/div/header/div[1]/div[2]/nav/ul/li[3]/a/span")
for i in links:
    print(i.get_attribute("innerHTML"))
    #getting all the anchor tags with the name
    if "Books" in i.get_attribute("innerHTML"):
        i.click()
        break
    
    


# In[26]:


#traversed into books we need to go to specified book
book_links=driver.find_elements("xpath",
"//div[contains(@class,'elementor-column-wrap')][.//h2[text()[contains(.,'7 IN 1')]]][count(.//a)=2]//a")
#path first selects the classe with elementor column wrap and next condition searches all h2 heading tags which contains the rquired book tittle with count of anchor tags 2 in a single div tag
# for j in book_links:
#     print(j.get_attribute("innerHTML"))
#     print(j.get_attribute("href"))
book_links[0].click()

#to switch between webpages we can use driver.switch_to.window()


# In[ ]:




