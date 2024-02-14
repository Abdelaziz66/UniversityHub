import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';

class Add_Quiz_Ins_Screen extends StatelessWidget {
   Add_Quiz_Ins_Screen({Key? key}) : super(key: key);
   final TextEditingController textEditingController = TextEditingController();
   var start_quiz_Controler=TextEditingController();
    var end_quiz_Controler=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit,App_state>(
        listener: (context,state){},
        builder: (context,state){
          App_cubit cubit=App_cubit.get(context);
          return Scaffold(

            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text('Add new quiz'),
            ),
            body: SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                      children: [
              
                        Center(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton2<String>(
              
                              isExpanded: true,
                              hint: Text(
                                'Select Course name',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Theme.of(context).hintColor,
                                ),
                              ),
                              items: cubit.materil_for_quiz
                                  .map((item) => DropdownMenuItem(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                                  .toList(),
                              value: cubit.selectedValue,
                              onChanged: (value) {
              
                                cubit.selected_item_quiz(value!);
              
                              },
                              buttonStyleData: const ButtonStyleData(
                                height: 60,
                                width: double.infinity,
                              ),
                              dropdownStyleData: const DropdownStyleData(
                                //height of the drop list
                                maxHeight: 200,
                              ),
                              menuItemStyleData: const MenuItemStyleData(
                                //height pf the one item
                                height: 40,
                              ),
                              dropdownSearchData: DropdownSearchData(
                                searchController: textEditingController,
                                searchInnerWidgetHeight: 50,
                                searchInnerWidget: Container(
                                  height: 50,
                                  child: TextFormField(
                                    expands: true,
                                    maxLines: null,
                                    controller: textEditingController,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 8,
                                      ),
                                      hintText: 'Search for an course...',
                                      hintStyle: const TextStyle(fontSize: 12),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                                searchMatchFn: (item, searchValue) {
                                  return item.value.toString().contains(searchValue);
                                },
                              ),
                              //This to clear the search value when you close the menu
                              onMenuStateChange: (isOpen) {
                                if (!isOpen) {
                                  textEditingController.clear();
                                }
                              },
                            ),
                          ),
                        ),
                        TextFormField(
                          controller: start_quiz_Controler,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Start at',

                          ),

                          onTap: (){
                            showTimePicker(context: context,
                         initialTime:TimeOfDay.now(),
                        ).then( (value)
                        {
                          start_quiz_Controler.text=value!.format(context).toString();
                        },
                        );
                          },
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'dead line',
                          ),
                        ),
                        SizedBox(height: 10,),

                        TextFormField(
                          controller: end_quiz_Controler,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'End at',

                          ),

                          onTap: (){
                            showTimePicker(context: context,
                              initialTime:TimeOfDay.now(),
                            ).then( (value)
                            {
                              end_quiz_Controler.text=value!.format(context).toString();
                            },
                            );
                          },
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'About quiz',
                          ),
                        ),
                        SizedBox(height: 150,),
              
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: TextButton(
                            onPressed: (){},
                            child: Text('Add questions',
                            style: TextStyle(
                              color: Colors.white
                            ),
                            ),
                          ),
                        ),
                       SizedBox(height: 20,),
                       Row(
                         children: [
                           Expanded(
                             child: Container(
                             height: 1,
                             color: Colors.grey[400],
                                                    ),
                           ),
                           SizedBox(width:25,),
                           Text('or',
                         style: TextStyle(
                           fontSize: 15
                         ),
                         ),
                           SizedBox(width:25,),
                           Expanded(
                             child: Container(
                               height: 1,
                               color: Colors.grey[400],
                             ),
                           ),
                         ],
                       ),
                        SizedBox(height: 20,),
              
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: TextButton(
                            onPressed: (){},
                            child: Text('Add file',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      ],
                  ),
                ),
              ),
            ),
          );
        },
    );
  }
}
