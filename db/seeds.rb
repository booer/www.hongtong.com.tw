#站台基本資訊
Site.create(mail: '', fax: '', tel: '', address: '')
#客製化的頁面 - 關於我們&公司沿革 // 輪播圖庫
(1..2).each do
Page.create(page_cn:'', page_en:'')
end
(1..3).each do
	AboutImage.create(image:'', page: '1')
end
(1..3).each do
	AboutImage.create(image:'', page: '2')
end
(1..4).each do
	Service.create(lang: '1',title: '服務項目', desc: '描述')
end
(1..4).each do
	Service.create(lang: '2',title: 'services', desc: 'texttext')
end