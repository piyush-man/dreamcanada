import 'package:flutter/material.dart';
import 'package:untitled/universities.dart';
class CustomSearchDelegate extends SearchDelegate {
  // Demo list to show querying
  List<String> searchTerms = ['McGill University',
    'University of Toronto',
    'University of British Columbia',
    'University of Alberta',
    'McMaster University',
    'University of Waterloo',
    'Western University',
    'University of Ottawa',
    'University of Calgary',
    'Queen\'s University at Kingston',
    'Dalhousie University',
    'Simon Fraser University',
    'University of Victoria',
    'Universite Laval',
    'York University',
    'University of Saskatchewan',
    'Cancordia University',
    'Universite du Quebec',
    'University of Guelph',
    'Carleton University',
    'University of Manitoba',
    'University of New Brunswick',
    'Memorial University of Newfoundland',
    'University of Windsor',
    'Toronto Metropolitan University',
    'Brock University',
    'University of Regina',
    'Lakehead University'];

  // first overwrite to
  // clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  // second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  // third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
          onTap: (){Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => unidetails(result)),
          );},
        );
      },
    );
  }

  // last overwrite to show the
  // querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
          onTap: convert(result,context),
        );
      },
    );
  }

  convert(String str,BuildContext context) {
    for (var i=0;i<unilist.length;i++)
      {
        if(unilist[0][i]==str){
              (){Navigator.push(context,
            MaterialPageRoute(builder: (context) => unidetails(i)),
          );};
        }
      }
  }
}