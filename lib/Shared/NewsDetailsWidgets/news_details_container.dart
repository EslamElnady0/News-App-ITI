import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/Shared/NewsDetailsWidgets/text_widget.dart';

class NewsDetailsContainer extends StatelessWidget {
  const NewsDetailsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * (438 / 812),
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
          top: MediaQuery.of(context).size.height * 0.1083743842364532,
        ),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              RichText(
                  text: TextSpan(
                      style: GoogleFonts.nunito(color: const Color(0xFF2E0505)),
                      children: [
                    TextSpan(
                        text: "LONDON ",
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w800,
                        )),
                    TextSpan(
                        style: GoogleFonts.nunito(fontSize: 14),
                        text:
                            "— Cryptocurrencies “have no intrinsic value” and people who invest in them should be prepared to lose all their money, Bank of England Governor Andrew Bailey said.")
                  ])),
              const TextWidget(
                  content:
                      "Digital currencies like bitcoin, ether and even dogecoin have been on a tear this year, reminding some investors of the 2017 crypto bubble in which bitcoin blasted toward \$20,000, only to sink as low as \$3,122 a year later."),
              const TextWidget(
                  content:
                      "Asked at a press conference Thursday about the rising value of cryptocurrencies, Bailey said: “They have no intrinsic value. That doesn’t mean to say people don’t put value on them, because they can have extrinsic value. But they have no intrinsic value.”"),
              const TextWidget(
                content:
                    "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
              ),
              const TextWidget(
                content:
                    "Bailey’s comments echoed a similar warning from the U.K.’s Financial Conduct Authority.",
              ),
              const TextWidget(
                content:
                    "“Investing in cryptoassets, or investments and lending linked to them, generally involves taking very high risks with investors’ money,” the financial services watchdog said in January.",
              ),
              const TextWidget(
                content:
                    "“If consumers invest in these types of product, they should be prepared to lose all their money.”",
              ),
              const TextWidget(
                content:
                    "Bailey, who was formerly the chief executive of the FCA, has long been a skeptic of crypto. In 2017, he warned: “If you want to invest in bitcoin, be prepared to lose all your money.”",
              )
            ],
          ),
        ),
      ),
    );
  }
}
