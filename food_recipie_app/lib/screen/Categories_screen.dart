import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_recipie_app/food/food.dart';
import 'package:food_recipie_app/widget/Category_item.dart';
//import 'package:food_recipie_app/widget/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  final List<String> imageUrl = [
    'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.vegrecipesofindia.com%2Fwp-content%2Fuploads%2F2021%2F06%2Fmasala-dosa-2.jpg&imgrefurl=https%3A%2F%2Fwww.vegrecipesofindia.com%2Fmasala-dosa-recipe-how-to-make-masala-dosa-recipe%2F&tbnid=tEoaa0-EJyDHhM&vet=12ahUKEwjOtMXs3pX4AhUejdgFHfFkBZoQMygDegUIARD_AQ..i&docid=jYC96f5v0I4fiM&w=600&h=600&q=masala%20dosa&ved=2ahUKEwjOtMXs3pX4AhUejdgFHfFkBZoQMygDegUIARD_AQ',
    'indianhealthyrecipes.com%2Fhyderabadi-biryani-recipe%2F&psig=AOvVaw09d0mSr6UP8O9uS1Tlw9tJ&ust=1654498941005000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCNjuyZXglfgCFQAAAAAdAAAAABAD',
    'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.secondrecipe.com%2Fwp-content%2Fuploads%2F2016%2F04%2Fchanna-bhatura-500x500.jpg&imgrefurl=https%3A%2F%2Fwww.secondrecipe.com%2Fpunjabi-chole-channa-masala%2F&tbnid=C7-8JHr37aAhzM&vet=12ahUKEwiXxsOb35X4AhUri9gFHd28C44QMygAegUIARDyAQ..i&docid=lPMrqQR4WJXitM&w=500&h=500&q=chole%20bhature&ved=2ahUKEwiXxsOb35X4AhUri9gFHd28C44QMygAegUIARDyAQ',
    'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.cubesnjuliennes.com%2Fwp-content%2Fuploads%2F2020%2F08%2FBest-Mutton-Keema-Samosa-Recipe-1.jpg&imgrefurl=https%3A%2F%2Fwww.cubesnjuliennes.com%2Fkeema-samosa-html%2F&tbnid=r0_IqrImRf6RPM&vet=12ahUKEwj0uvm235X4AhX6jtgFHeGaDoIQMygCegUIARCCAg..i&docid=Gcr6V-wPmpWUBM&w=1200&h=1201&q=samosa&ved=2ahUKEwj0uvm235X4AhX6jtgFHeGaDoIQMygCegUIARCCAg',
    'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.carveyourcraving.com%2Fwp-content%2Fuploads%2F2021%2F10%2Fpaneer-tikka-skewers.jpg&imgrefurl=https%3A%2F%2Fwww.carveyourcraving.com%2Fpaneer-tikka-oven%2F&tbnid=RWQQbsbAgtEQGM&vet=12ahUKEwig2djK35X4AhUritgFHdfZAzoQMygDegUIARCFAg..i&docid=gLYWPd9R7GmksM&w=1200&h=1200&q=panner%20tikka&ved=2ahUKEwig2djK35X4AhUritgFHdfZAzoQMygDegUIARCFAg',
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DUqhvooXRd0M&psig=AOvVaw1-iAgutHa4YiiYGp-6t6w0&ust=1654499141611000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCLjK-PXglfgCFQAAAAAdAAAAABAD',
    'https://www.google.com/imgres?imgurl=https%3A%2F%2Fcdn.apartmenttherapy.info%2Fimage%2Fupload%2Ff_jpg%2Cq_auto%3Aeco%2Cc_fill%2Cg_auto%2Cw_1500%2Car_4%3A3%2Fk%252FPhoto%252FRecipe%2520Ramp%2520Up%252F2022-02-Paratha%252Fparatha-stacked-top_view&imgrefurl=https%3A%2F%2Fwww.thekitchn.com%2Fparathas-recipe-23280232&tbnid=swZk1TJn5rMCBM&vet=12ahUKEwj1keOH4JX4AhWmgGMGHQRNCUYQMygBegUIARCEAg..i&docid=ijYjx8b3B6lprM&w=1500&h=1125&q=paratha&ved=2ahUKEwj1keOH4JX4AhWmgGMGHQRNCUYQMygBegUIARCEAg',
    'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.cookwithmanali.com%2Fwp-content%2Fuploads%2F2018%2F04%2FVada-Pav-500x500.jpg&imgrefurl=https%3A%2F%2Fwww.cookwithmanali.com%2Fvada-pav%2F&tbnid=smd2HrRVSvU72M&vet=12ahUKEwiZkZ2d4JX4AhUc_jgGHdF-C0oQMygAegUIARD4AQ..i&docid=B3wPtD5x-ZzOJM&w=660&h=660&q=vada%20pav&ved=2ahUKEwiZkZ2d4JX4AhUc_jgGHdF-C0oQMygAegUIARD4AQ',
    'https://www.google.com/imgres?imgurl=https%3A%2F%2Fstatic.toiimg.com%2Fthumb%2F52727664.cms%3Fwidth%3D1200%26height%3D900&imgrefurl=https%3A%2F%2Frecipes.timesofindia.com%2Frecipes%2Fdahi-papdi-chaat%2Frs52727664.cms&tbnid=cO-SXJR7TS465M&vet=12ahUKEwim5uq24JX4AhVY_DgGHZVIDSsQMygBegUIARDxAQ..i&docid=yPGSEJewIXztLM&w=1200&h=900&q=chaat&ved=2ahUKEwim5uq24JX4AhVY_DgGHZVIDSsQMygBegUIARDxAQ',
    'https://www.google.com/imgres?imgurl=https%3A%2F%2Fstatic.toiimg.com%2Fthumb%2F53099699.cms%3Fwidth%3D1200%26height%3D900&imgrefurl=https%3A%2F%2Frecipes.timesofindia.com%2Frecipes%2Fjalebi%2Frs53099699.cms&tbnid=LN2FGR0B9xtC3M&vet=12ahUKEwjwldrQ4JX4AhUDidgFHezbDbAQMygAegUIARD8AQ..i&docid=kKIHwCEognc1PM&w=1200&h=900&q=jalebi&ved=2ahUKEwjwldrQ4JX4AhUDidgFHezbDbAQMygAegUIARD8AQ',
  ];
  @override
  Widget build(BuildContext context) {
    final catTitle = DUMMY_CATEGORIES.map((e) {
      return e.title;
    });

    return Scaffold(
        appBar: AppBar(
          title: const Text('FoodIndia'),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          padding: const EdgeInsets.all(5),
          itemCount: DUMMY_CATEGORIES.length,
          itemBuilder: (context, index) {
            return CategoryItem(DUMMY_CATEGORIES[index].title,
                DUMMY_CATEGORIES[index].id, DUMMY_MEALS[index].imageUrl);
          },
        ));
  }
}
