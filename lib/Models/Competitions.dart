import 'dart:convert';

import 'package:http/http.dart' as http;

class Competition
{

	int 		time;

	String		platform,
				title,
				link;

	Competition(t, title, platform, link);

	static const List<String> dayer = [
		"1st",
		"2nd",
		"3rd",
		"4th",
		"5th",
		"6th",
		"7th",
		"8th",
		"9th",
		"10th",
		"11th",
		"12th",
		"13th",
		"14th",
		"15th",
		"16th",
		"17th",
		"18th",
		"19th",
		"20th",
		"21st",
		"22nd",
		"23rd",
		"24th",
		"25th",
		"26th",
		"27th",
		"28th",
		"29th",
		"30th",
		"31st"
	];

	static const List<String> monther = [
		"January",
		"February",
		"March",
		"April",
		"May",
		"June",
		"July",
		"August",
		"September",
		"October",
		"November",
		"December"
	];

	static Future<List<Map<String, dynamic>>> getFromCF() async
	{
		var url = "https://codeforces.com/api/contest.list";
		var resp = await http.get(url);

		var parsed = json.decode(resp.body).cast<String, dynamic>();
		List<Map<String, dynamic>> res = parsed['result'].cast<Map<String, dynamic>>();

		int t = res.indexOf(res.firstWhere((E) => (E["relativeTimeSeconds"] > 0)));

		print("Value of t: " + t.toString());

		res = res.sublist(0,t).reversed.toList();

		List<Map<String, dynamic>> ret = res.map<Map<String, dynamic>>((E){
			
			return {
				"title"					:		E["name"].toString().replaceAll("Codeforces ", ""),
				"platform"				:		"Codeforces",
				"link"					:		"https://codeforces.com/contests",
				"time"					:		DateTime.fromMillisecondsSinceEpoch(E["startTimeSeconds"] * 1000),
				"durationSeconds"		:		E["durationSeconds"]
			};

		}).toList();

		return ret;
	}

	static Future<List<Map<String, dynamic>>> getFromHR() async
	{
		var url = "https://www.hackerrank.com/rest/contests/upcoming?offset=0&limit=10&contest_slug=active";
		var resp = await http.get(url);

		var parsed = json.decode(resp.body).cast<String, dynamic>();
		List<Map<String, dynamic>> res = parsed['models'].cast<Map<String, dynamic>>();

		int t = res.indexOf(res.firstWhere((E) => E["ended"]));

		print("Value of t: " + t.toString());

		res = res.sublist(0,t);

		List<Map<String, dynamic>> ret = res.map<Map<String, dynamic>>((E){
			
			return {
				"title"					:		E["name"].toString(),
				"platform"				:		"HackerRank",
				"link"					:		"https://www.hackerrank.com/contests",
				"time"					:		DateTime.fromMillisecondsSinceEpoch(E["epoch_starttime"] * 1000),
				"durationSeconds"		:		E["epoch_endtime"] - E["epoch_starttime"]
			};

		}).toList();

		return ret;
	}
}