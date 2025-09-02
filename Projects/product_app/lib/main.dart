import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ProductPage());
  }
}

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F4F8),
      appBar: AppBar(
        title: const Text("الواجهة الرئيسية"),
        backgroundColor: const Color(0xFF42A5F5),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // الشريط العلوي القابل للتمرير
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFFBBDEFB),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF90CAF9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF64B5F6),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      "",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF42A5F5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // المربع الكبير (المنتج)
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 10,
                      spreadRadius: 3,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      // الصورة
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.center,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE0E0E0),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text("Images"),
                        ),
                      ),
                      const SizedBox(width: 20),
                      // النصوص والتفاصيل
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Align(
                              alignment: Alignment.topRight,
                              child: Icon(Icons.more_vert),
                            ),
                            const Text(
                              "Title",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF263238),
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              "........... ..........",
                              style: TextStyle(color: Colors.grey),
                            ),
                            const Text(
                              "........... ..........",
                              style: TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(height: 12),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Icon(Icons.star, color: Colors.amber),
                                    SizedBox(width: 4),
                                    Text("****"),
                                  ],
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF42A5F5),
                                  ),
                                  child: const Text(
                                    "أضف إلى السلة",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // زر "تفاصيل"
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xFF42A5F5)),
                ),
                child: const Text(
                  "تفاصيل",
                  style: TextStyle(color: Color(0xFF42A5F5)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
