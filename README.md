# worldmoneyxx
there are world money project co-working spaces

# อธิบายหน้าที่แต่ละ apps 
articles - copy มาจากเล่มเขียว จัดเตรียมไว้เพื่อสร้าง blogs (ข่าว, บทความต่างๆ, ฯลฯ)
pages - home page
selling - ซื้อ ขาย asset 
          การซื้อจะเป็นรูปแบบการประมูล (auction) 
          การขาย จะอัพโหลดข้อมูลโดย admin ซึ่ง admin จะรับข้อมูล asset จาก user จากช่องทางต่างๆ
                 เพื่อมาคัดกรองและอัพโหลดเข้าระบบผ่าน  funstion base view : selling_create() 
                 และ url : new/ โดยจะมีแค่ admin ที่มีสิทธิ์เข้าถึง ระบบนี้ ทดลองได้โดยใช้ user1 กับ
                 admin ลอง log-in ดู จะพบว่า user1 ไม่สามารถเขาถึง url : new/ ได้
user - copy มาจากเล่มเขียว (Custom Users)

# ก่อน runserver ให้ migrate ก่อน (python manage.py migrate)
              
