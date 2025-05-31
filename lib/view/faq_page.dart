import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remobridgeapplication/utility/colors.dart';
import '../utility/text_styles.dart';

class FAQPage extends StatefulWidget {
  const FAQPage({super.key});

  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  final List<FAQItem> _faqs = [
    FAQItem(
      question: 'Is there an onsite option for our programs?',
      answer:
      'Our techpreneurship training will be 100% onsite when we acquire our own building shortly in Abuja. However, training is virtual and we converge in designated venues monthly. Details will be communicated upon registration.',
    ),
    FAQItem(
      question: 'How much is the fee?',
      answer:
      'Our virtual techpreneurship training for six months is free but individuals will pay N30,000 for the workshop before joining a cohort. PLEASE NOTE: When our building is acquired, the techpreneurship program will be 100% onsite and will last for one year; the fee will be N5,912,500 which will cover the cost of the training, daily lunch, a laptop, learning materials, healthcare insurance for the duration of the program, plus VAT.',
    ),
    FAQItem(
      question: 'Are there internship opportunities for the training programs ?',
      answer:
      "Yes, but only for the techpreneurship program.",
    ),
    FAQItem(
      question: 'Are there any financial aid or scholarship options available?',
      answer:
      'Yes, you can access an education loan offer for the techpreneurship program.',
    ),
    FAQItem(
      question: 'Do I need prior knowledge to enroll in the techpreneurship program?',
      answer:
      'No, you do not need prior knowledge to join the techpreneurship program.',
    ),
    FAQItem(
        question: 'Can I work wile doing the techpreneurship program?',
        answer:
        "No, you cannot. This is a program that requires your full commitment.",
    ),
    FAQItem(
      question: 'Do you provide certificates?',
      answer:
      'Yes. You will receive a certificate upon completion.',
    ),
    FAQItem(
      question: 'Are there any career support services provided during the training?',
      answer:
      'Yes, We have mentorship cycles, seminars and workshop to provide career guidance to our students.',
    ),

    FAQItem(
      question: 'How long is the training duration?',
      answer:
      'Duration for the onsite techpreneurship program is one year while the virtual techpreneurship program is six months',
    ),

    FAQItem(
      question: 'Is my personal data safe?',
      answer:
      'Absolutely. We take your privacy seriously. Your data is stored securely and only used to enhance your experience. Please review our [Privacy Policy] for more information.',
    ),

    FAQItem(
      question: 'I have more questions , how can I contact you?',
      answer:
      "You can reach us through: "
          " WhatsApp: +2348138442423  |  "
          " Email: remobridge@outlook.com  |  "
          "Website: www.remobridge.vercel.app ",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SubHeadlineText(text: "Frequently Asked Questions", maxLines: 1,),
        Padding(
          padding: MediaQuery.of(context).size.width < 600
              ? const EdgeInsets.all(30)
              : const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: _faqs.length,
            padding: const EdgeInsets.all(16),
            itemBuilder: (context, index) {
              return _buildFAQTile(_faqs[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildFAQTile(FAQItem item) {
    return StatefulBuilder(
      builder: (context, setTileState) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: MyColors.fadedYellow,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: Offset(0, 2),
              )
            ],
          ),
          child: ExpansionTile(
            tilePadding: const EdgeInsets.symmetric(horizontal: 16),
            childrenPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            title: Text(
              item.question,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            trailing: AnimatedRotation(
              turns: item.isExpanded ? 0.5 : 0,
              duration: const Duration(milliseconds: 300),
              child: const Icon(Icons.keyboard_arrow_down),
            ),
            onExpansionChanged: (expanded) {
              setTileState(() {
                item.isExpanded = expanded;
              });
            },
            children: [
              Text(
                item.answer,
                style:  TextStyle(
                  fontSize: 14,
                  color: MyColors.teal,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class FAQItem {
  final String question;
  final String answer;
  bool isExpanded;

  FAQItem({
    required this.question,
    required this.answer,
    this.isExpanded = false,
  });
}
