/decl/background_detail/heritage/other
	name = "Other Culture"
	description = "You are one of the minorities in your country, likely originating from outside."
	language = /decl/language/human/common
	secondary_langs = list(
		/decl/language/human/common,
		/decl/language/sign
	)
	uid = "heritage_other"

/decl/background_detail/heritage/human
	name = "Primary Ethnicity"
	description = "You are one of the people that make up the primary culture."
	language = /decl/language/human/common
	secondary_langs = list(
		/decl/language/human/common,
		/decl/language/sign
	)
	uid = "heritage_human_generic"
/*
/decl/background_detail/heritage/synthetic
	name = "Artificial Intelligence"
	description = "You are a simple artificial intelligence created by humanity to serve a menial purpose."
	secondary_langs = list(
		/decl/language/machine,
		/decl/language/human/common,
		/decl/language/sign
	)
	uid = "heritage_ai_generic"

/decl/background_detail/heritage/synthetic/sanitize_background_name(new_name)
	return sanitize_name(new_name, allow_numbers = TRUE)
*/