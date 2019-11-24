-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2019 at 12:52 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tripo`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/images/default.jpg',
  `gallery` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '{}',
  `author` int(11) DEFAULT NULL,
  `published_date` timestamp NULL DEFAULT current_timestamp(),
  `expire_date` timestamp NULL DEFAULT NULL,
  `status` enum('published','pending','trash') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `featured` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `alias`, `excerpt`, `content`, `featured_image`, `gallery`, `author`, `published_date`, `expire_date`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 'كعقار جيني لعلاج فقدان البصر', 'لوكستورنا-لفقدان-البصر', 'علنت الهيئة العامة للعذاء والدواء السعودية موافقتها على تسجيل لوكستورنا (فورتيجين نيباروفوفيك) كعقار جيني لعلاج فقدان البصر الوراثي الذى من الممكن أن يسبب العمى.', '<div class=\"dmi-entry-content\">\r\n<p><noscript><img class=\"aligncenter wp-image-18340 size-full\" src=\"https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/لوكستورنا.jpg\" alt=\"لوكستورنا\" width=\"1200\" height=\"700\" srcset=\"https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/لوكستورنا.jpg 1200w, https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/لوكستورنا-300x175.jpg 300w, https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/لوكستورنا-768x448.jpg 768w, https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/لوكستورنا-1024x597.jpg 1024w\" sizes=\"(max-width: 1200px) 100vw, 1200px\" /></noscript><img class=\"aligncenter wp-image-18340 size-full ls-is-cached lazyloaded\" src=\"https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/لوكستورنا.jpg\" sizes=\"(max-width: 1200px) 100vw, 1200px\" srcset=\"https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/لوكستورنا.jpg 1200w, https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/لوكستورنا-300x175.jpg 300w, https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/لوكستورنا-768x448.jpg 768w, https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/لوكستورنا-1024x597.jpg 1024w\" alt=\"لوكستورنا\" width=\"1200\" height=\"700\" data-src=\"https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/لوكستورنا.jpg\" data-srcset=\"https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/لوكستورنا.jpg 1200w, https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/لوكستورنا-300x175.jpg 300w, https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/لوكستورنا-768x448.jpg 768w, https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/لوكستورنا-1024x597.jpg 1024w\" data-sizes=\"(max-width: 1200px) 100vw, 1200px\" /></p>\r\n<div class=\"anchor-menu\"><strong>المحتوى</strong>\r\n<ul class=\"anchor-menu\" data-smooth-scroll=\"\">\r\n<li><a href=\"#section-1\">كيف يتم استخدام لوكستورنا؟</a></li>\r\n<li><a href=\"#section-2\">الأعراض الجانبية لعلاج لوكستورنا</a></li>\r\n</ul>\r\n</div>\r\nأعلنت الهيئة العامة للعذاء والدواء السعودية موافقتها على تسجيل <strong>لوكستورنا</strong> (فورتيجين نيباروفوفيك) كعقار جيني لعلاج فقدان البصر الوراثي الذى من الممكن أن يسبب العمى.\r\n<p>&nbsp;</p>\r\n<div class=\"banner-inside-post\">\r\n<div class=\"dmi-ads dmi-ads-placement-2\">\r\n<div class=\"adv-headline\">Advertisement</div>\r\n<ins class=\"adsbygoogle\" style=\"display: block; text-align: center;\" data-ad-layout=\"in-article\" data-ad-format=\"fluid\" data-ad-client=\"ca-pub-1048697500471556\" data-ad-slot=\"1282580322\"></ins></div>\r\n</div>\r\n<p>ويُعتبر لوكستورنا أول علاج جيني في المملكة العربية السعودية يستهدف مرضاً ناجماً عن طفرات في جين محدد، حيث يقوم لوكستورنا بعلاج المرضى البالغين والأطفال المصابين بحثل الشبكية الوراثي الناتج عن حدوث طفرات في جين RPE65، حيث يقوم بإنتاج أحد البروتينات اللازمة للرؤية.</p>\r\n<p>وأوضحت الهيئة أن فورتیجین نیبارفوفیك هي المادة الفعالة في عقار لوكستورنا، وهي فيروس معدل يحتوى على نسخة نشطة من جین RPE65.</p>\r\n<p>وبعد حقن العقار يتم نقل الجين إلى خلايا الشبكية في الجزء الخلفي من العين، مما يتيح للشبكية إنتاج البروتينات الضروية للرؤية، ولا يوجد أي خطر من الفيروس المُستخدم، فهو لا يقوم بنقل أي مرض للبشر.</p>\r\n<div class=\"banner-inside-post banner-inside-post-2\">\r\n<div class=\"dmi-ads dmi-ads-placement-3\">\r\n<div class=\"adv-headline\">Advertisement</div>\r\n<ins class=\"adsbygoogle\" style=\"display: block;\" data-ad-client=\"ca-pub-1048697500471556\" data-ad-slot=\"3052679764\" data-ad-format=\"auto\" data-full-width-responsive=\"true\"></ins></div>\r\n</div>\r\n<p>وأوضحت الهيئة العامة للغذاء والدواء السعودية أنه تم دراسة مدى فاعلية مستحضر لوكستورنا على 31 مشارك، وتم خلالها قياس معدل التغيير والتحسن في قدرة المريض على تتبع مسار محدد في درجات مختلفة من الإضاءة، وقد تبين أن الرؤية لديهم تحسنت بعد استخدام مستحضر لوكستورنا.</p>\r\n<h2 id=\"section-1\">كيف يتم استخدام لوكستورنا؟</h2>\r\n<p>تحت التحذير في المستشفي يتم إعطاء لوكستورنا داخل غرفة العمليات من قبل جراحين مختصصين في جراعة الشبكية، لأن المستحضر يتم حقنه مباشرة تحت الشبكية، ويأخد المريض جرعة واحدة في كل عين في يومين منفصلين بحيث تكون الفترة بين العمليتين 6 أيام على الأقل.</p>\r\n<div class=\"related-consultation-inside-post\">\r\n<h3>مواضيع متعلقة</h3>\r\n<ul>\r\n<li><a href=\"https://news.dailymedicalinfo.com/%d8%a7%d8%b9%d8%aa%d9%84%d8%a7%d9%84-%d8%a7%d9%84%d8%b4%d8%a8%d9%83%d9%8a%d8%a9-%d8%a7%d9%84%d8%b3%d9%83%d8%b1%d9%8a/\">الموافقة على أول جهاز طبي ذكي يشخص &rdquo; الشبكية السكري &rdquo; بدون طبيب!</a></li>\r\n<li><a href=\"https://news.dailymedicalinfo.com/%d8%a7%d8%ae%d8%aa%d8%a8%d8%a7%d8%b1-%d8%ac%d8%af%d9%8a%d8%af-%d9%84%d9%84%d8%b9%d9%8a%d9%86-%d9%84%d9%84%d8%aa%d9%86%d8%a8%d8%a4-%d8%a8%d9%85%d8%ae%d8%a7%d8%b7%d8%b1-%d8%a7%d9%84%d9%85%d9%8a%d8%a7/\">اختبار جديد للعين للتنبؤ بمخاطر المياه الزرقاء</a></li>\r\n<li><a href=\"https://news.dailymedicalinfo.com/18127_%d8%a7%d8%b3%d8%a8%d8%a7%d8%a8-%d8%a7%d9%84%d8%b9%d9%85%d9%89/\">حالة غريبة: البطاطا المقلية والخبز الأبيض من اسباب العمى الغريبة لهذا المراهق!</a></li>\r\n<li><a href=\"https://news.dailymedicalinfo.com/%d8%a7%d9%84%d9%82%d8%a7%d8%aa%d9%84-%d8%a7%d9%84%d8%b5%d8%a7%d9%85%d8%aa-%d9%88%d8%b1%d8%a7%d8%a1-%d8%a3%d9%85%d8%b1%d8%a7%d8%b6-%d8%a7%d9%84%d9%82%d9%84%d8%a8-%d9%88-%d8%a7%d9%84%d8%b3%d9%83%d8%b1/\">القاتل الصامت وراء أمراض القلب و السكري و ضمور المخ و الإكتئاب</a></li>\r\n<li><a href=\"https://news.dailymedicalinfo.com/%d8%b9%d9%84%d8%a7%d8%ac-%d9%82%d8%b5%d8%b1-%d8%a7%d9%84%d9%86%d8%b8%d8%b1-%d8%a8%d8%ac%d9%87%d8%a7%d8%b2-visumax/\">الغذاء والدواء تجيز إستخدام جهاز VisuMax لعلاج قصر النظر</a></li>\r\n</ul>\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n<h2 id=\"section-2\">الأعراض الجانبية لعلاج لوكستورنا</h2>\r\n<p>هناك بعض الأعراض الأكثر شيوعاً لمستحضر لوكستورنا، نذكر منها:</p>\r\n<div class=\"banner-inside-post banner-inside-post-3\">\r\n<div class=\"dmi-ads dmi-ads-placement-4\">&nbsp;</div>\r\n</div>\r\n<div class=\"banner-inside-post banner-inside-post-4\">\r\n<div class=\"dmi-ads\">&nbsp;</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>احمرار في العين.</li>\r\n<li>تكون <a href=\"https://www.dailymedicalinfo.com/view-infographic/%D9%85%D8%B1%D8%B6-%D8%A7%D9%84%D9%85%D9%8A%D8%A7%D9%87-%D8%A7%D9%84%D8%A8%D9%8A%D8%B6%D8%A7%D8%A1/\">المياه البيضاء</a>.</li>\r\n<li>ارتفاع ضغط العين.</li>\r\n<li>تكون رواسب تحت <a href=\"https://news.dailymedicalinfo.com/%d8%a7%d8%b9%d8%aa%d9%84%d8%a7%d9%84-%d8%a7%d9%84%d8%b4%d8%a8%d9%83%d9%8a%d8%a9-%d8%a7%d9%84%d8%b3%d9%83%d8%b1%d9%8a/\">الشبكية</a>، ولكن تظل منافعه أكثر من أعراضه الجانبية.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n</div>', '/images/blog/blog-01.jpg', '{}', NULL, '2019-10-25 17:04:04', NULL, 'published', 'on', '2019-11-13 07:08:28', '2019-11-19 13:58:35'),
(2, 'دراسة تكشف أغرب سبب يؤدي إلى الصلع وفقدان الشعر', '18431_الصلع', 'كشفت دراسة جديدة عن أغرب سبب يؤدي إلى الصلع ، وهو أن الملوثات الشائعة في الهواء يمكن أن تُسبب تساقط الشعر وفقدانه، وإبطاء نموه.', '<div class=\"dmi-entry-content\"><p><noscript><img class=\"aligncenter size-full wp-image-18434\" src=\"https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/الصلع.jpg\" alt=\"الصلع\" width=\"1200\" height=\"700\" srcset=\"https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/الصلع.jpg 1200w, https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/الصلع-300x175.jpg 300w, https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/الصلع-768x448.jpg 768w, https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/الصلع-1024x597.jpg 1024w\" sizes=\"(max-width: 1200px) 100vw, 1200px\" /></noscript><img class=\"aligncenter size-full wp-image-18434 ls-is-cached lazyloaded\" src=\"https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/الصلع.jpg\" data-src=\"https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/الصلع.jpg\" alt=\"الصلع\" width=\"1200\" height=\"700\" data-srcset=\"https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/الصلع.jpg 1200w, https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/الصلع-300x175.jpg 300w, https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/الصلع-768x448.jpg 768w, https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/الصلع-1024x597.jpg 1024w\" data-sizes=\"(max-width: 1200px) 100vw, 1200px\" sizes=\"(max-width: 1200px) 100vw, 1200px\" srcset=\"https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/الصلع.jpg 1200w, https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/الصلع-300x175.jpg 300w, https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/الصلع-768x448.jpg 768w, https://news.dailymedicalinfo.com/wp-content/uploads/2019/10/الصلع-1024x597.jpg 1024w\">كشفت دراسة جديدة عن أغرب سبب يؤدي إلى <strong>الصلع</strong> ، وهو أن الملوثات الشائعة في الهواء يمكن أن تُسبب تساقط الشعر وفقدانه، وإبطاء نموه.</p><div class=\"banner-inside-post\"><div class=\"dmi-ads dmi-ads-placement-2\"><div class=\"adv-headline\">Advertisement</div><ins class=\"adsbygoogle\" style=\"display:block; text-align:center;\" data-ad-layout=\"in-article\" data-ad-format=\"fluid\" data-ad-client=\"ca-pub-1048697500471556\" data-ad-slot=\"1282580322\"></ins> <script>(adsbygoogle = window.adsbygoogle || []).push({});</script></div></div><p>وأثبتت الدراسة أن الغبار وجزيئات الوقود على خلايا فروة الرأس تقلل مستويات 4 بروتينات رئيسية في فروة الرأس مسئولة عن نمو الشعر.</p><p>كما أوضحت الدراسة أنه كلما زادت كمية الجزيئات المحمولة في الهواء زاد التأثير، خاصة مع الذين يعيشون في المدن الصناعية أو بالقرب منها، يكون خطر الإصابة بالصلع لديهم أكبر.</p><p>وتُعتبر هذه الدراسة هي الأولي من نوعها التى كشفت عن العلاقة بين الملوثات المحمولة بالهواء وعلاقتها بتساقط وفقدان الشعر.</p><p>وقال الباحث الرئيسي هيوك تشول كوون في المؤتمر الأوروبي الثامن والعشرون لأمراض الجلدية والتناسلية في مدريد، أن نتائج الدراسة تقتضي إجراء مزيد من البحوث لتأكيد التأثير الناتج عن الملوثات لمعرفة مدى سرعة تأثير ذلك على الأشخاص الذين يتعرضون بشكل منتظم للملوثات في حياتهم بشكل يومي.</p><div class=\"banner-inside-post banner-inside-post-2\"><div class=\"dmi-ads dmi-ads-placement-3\"><div class=\"adv-headline\">Advertisement</div> <ins class=\"adsbygoogle\" style=\"display:block\" data-ad-client=\"ca-pub-1048697500471556\" data-ad-slot=\"3052679764\" data-ad-format=\"auto\" data-full-width-responsive=\"true\"></ins> <script>(adsbygoogle = window.adsbygoogle || []).push({});</script></div></div><p>وأضاف الباحث أنه من الممكن افتراض أن مستويات تلوث الهواء يمكن أن تؤدي إلى الصلع، ولكن يجب إجراء مزيد من البحوث لتأكيد ذلك.</p><p>ويذكر أن هناك أدوية تساهم في منع تطور الصلع في بعض الحالات، ولكن يأخد الأمر حوالي 6 أشهر حتى تكون هناك نتائج ملموسة منها:</p><ul><li>دواء فيناسترايد الذي يعمل على تثبيط تحويل التستوستيرون إلى <a href=\"https://ar.wikipedia.org/wiki/%D8%AF%D9%8A%D9%87%D8%AF%D8%B1%D9%88%D8%AA%D8%B3%D8%AA%D9%88%D8%B3%D8%AA%D9%8A%D8%B1%D9%88%D9%86\">هرمون ديهيدروتستوستيرون</a> وهو هرمون يلعب دور كبير في فقدان الشعر، ولكنه يوصف للرجال فقط، ولكنه يمكن أن يسبب انخفاض الدافع الجنسي.</li><li>كما أن دواء مينوكسيديل مفيد لتساقط الشعر عند الإناث والذكور، عندما يكون تساقط الشعر نتيجة للهرمونات، ولكن هناك آثار جانبية تتمثل في نمو الشعر في أماكن غير مرغوب بها.</li></ul><p>ويمكن اللجواء إلى زراعة الشعر من أجل التخلص من مشكلة الصلع، سواء عن طريق&nbsp;تقنية الاقتطاف لزراعة الشعر FUE، أو تقنية الشريحة لزراعة الشعر FUT.</p><p>كما يمكن استخدام العلاجات الطبيعية مثل استخدام عصير البصل، عصير الثوم، عصير الزنجبيل، أو وضع الحناء على الرأس، أو غلى ملعقتين من الشاي الأخضر على كوب من الماء، وتركه لمدة ساعة على الشعر.</p><div class=\"banner-inside-post banner-inside-post-3\"><div class=\"dmi-ads dmi-ads-placement-4\"> <ins class=\"adsbygoogle\" style=\"display:block\" data-ad-client=\"ca-pub-1048697500471556\" data-ad-slot=\"5267779564\" data-ad-format=\"auto\" data-full-width-responsive=\"true\"></ins> <script>(adsbygoogle = window.adsbygoogle || []).push({});</script> </div></div><p>اقرأ أيضاً:</p><p><a href=\"https://news.dailymedicalinfo.com/%d8%a7%d9%84%d8%b9%d8%ac%d8%b2-%d8%a7%d9%84%d8%ac%d9%86%d8%b3%d9%8a/\">تحذير : أدوية علاج الصلع تسبب العجز الجنسي</a></p><div class=\"banner-inside-post banner-inside-post-4\"><div class=\"dmi-ads\"> <ins class=\"adsbygoogle\" style=\"display:block\" data-ad-client=\"ca-pub-1048697500471556\" data-ad-slot=\"1641672970\" data-ad-format=\"auto\" data-full-width-responsive=\"true\"></ins> <script>(adsbygoogle = window.adsbygoogle || []).push({});</script> </div></div><p></p></div>', '/images/blog/blog-02.jpg', '{}', NULL, '2019-10-25 17:04:12', NULL, 'published', '0', '2019-11-13 07:08:28', '2019-11-13 07:08:41');

-- --------------------------------------------------------

--
-- Table structure for table `blog_procedure`
--

CREATE TABLE `blog_procedure` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `procedure_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_procedure`
--

INSERT INTO `blog_procedure` (`id`, `blog_id`, `procedure_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2019-11-18 01:56:12', '2019-11-18 01:56:12'),
(2, 1, 3, '2019-11-18 01:56:12', '2019-11-18 01:56:12'),
(3, 2, 6, '2019-11-18 01:56:12', '2019-11-18 01:56:12');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `services` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `alias`, `excerpt`, `description`, `location`, `city_code`, `services`, `featured_image`, `gallery`, `created_at`, `updated_at`) VALUES
(1, 'تــهــران', 'tehran', 'هي عاصمة إيران، ومركز محافظة طهران، وأكبر مدن إيران ومن أكثر مدن المنطقة اكتظاظا بالسكان، وهي المركز الثقافي', '<p>طهران (بالفارسية: تهران) (عن هذا الملف نطق (؟&middot;معلومات)) هي عاصمة إيران، ومركز محافظة طهران، وأكبر مدن إيران ومن أكثر مدن المنطقة اكتظاظا بالسكان، وهي المركز الثقافي والاقتصادي والسياسي للبلاد، وتعتبر العاصمة الثانية والثلاثون لإيران بعد أن انتقلت إليها من مدينة شيراز. شهدت المدينة مؤتمرا تاريخيا هاما يدعى مؤتمر طهران، وهو الاجتماع الأول للقادة الرئيسيين لقوات الحلفاء خلال الحرب العالمية الثانية، تقع مدينة طهران على خط عرض 35.41 شمالاً وعلى خط طول 51.25 شرقاً على السفوح الجنوبية لجبال البرز وتصعد أحيائها الراقية في شمال المدينة على الأقدام الجنوبية لجبال البرز. يبلغ عدد سكانها حوالي اثنى عشر مليون نسمة حسب إحصاء عام 2012. تتركز فيها ما يفوق نصف صناعات البلاد الأساسية مثل الصناعات الكهربائية، النسيج، السكر، الاسمنت، الكيميائيات وغيرها. إضافة إلى العديد من المسارح، المدارس، الجامعات، الحدائق والمتاحف. الغالبية العظمى من سكان مدينة طهران يتكلمون باللغة الفارسية وحوالي 99٪ من سكان العاصمة يفهمون ويتحدثون الفارسية. وهناك أيضا أعداد كبيرة من القوميات الإيرانية الأخرى في المدينة مثل الأذربيجانيين، المازندرانيین، الجيلانين، الأرمن، اللور و الأكراد الذين يتحدثون الفارسية كلغة ثانية.</p>\r\n<div id=\"accordionExample\" class=\"accordion\">\r\n<div class=\"card\">\r\n<div id=\"headingOne\" class=\"card-header\">\r\n<h2 class=\"mb-0\"><button class=\"btn btn-link\" type=\"button\" data-toggle=\"collapse\" data-target=\"#collapseOne\" aria-expanded=\"true\" aria-controls=\"collapseOne\"> Collapsible Group Item #1 </button></h2>\r\n</div>\r\n<div id=\"collapseOne\" class=\"collapse show\" aria-labelledby=\"headingOne\" data-parent=\"#accordionExample\">\r\n<div class=\"card-body\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.</div>\r\n</div>\r\n</div>\r\n<div class=\"card\">\r\n<div id=\"headingTwo\" class=\"card-header\">\r\n<h2 class=\"mb-0\"><button class=\"btn btn-link collapsed\" type=\"button\" data-toggle=\"collapse\" data-target=\"#collapseTwo\" aria-expanded=\"false\" aria-controls=\"collapseTwo\"> Collapsible Group Item #2 </button></h2>\r\n</div>\r\n<div id=\"collapseTwo\" class=\"collapse\" aria-labelledby=\"headingTwo\" data-parent=\"#accordionExample\">\r\n<div class=\"card-body\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.</div>\r\n</div>\r\n</div>\r\n<div class=\"card\">\r\n<div id=\"headingThree\" class=\"card-header\">\r\n<h2 class=\"mb-0\"><button class=\"btn btn-link collapsed\" type=\"button\" data-toggle=\"collapse\" data-target=\"#collapseThree\" aria-expanded=\"false\" aria-controls=\"collapseThree\"> Collapsible Group Item #3 </button></h2>\r\n</div>\r\n<div id=\"collapseThree\" class=\"collapse\" aria-labelledby=\"headingThree\" data-parent=\"#accordionExample\">\r\n<div class=\"card-body\">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.</div>\r\n</div>\r\n</div>\r\n</div>', 'dgfjkuigsvfbgfkyuefrwg', '21', '{}', '/images/cities/tehran/image-01.jpg', '{}', '2019-10-15 08:00:00', '2019-11-19 11:03:12'),
(2, 'شـیـــراز', 'shiraz', 'ي مدينة إيرانية. وهي مركز محافظة فارس ومقاطعة شيراز. وحسب إحصاء سنة 2006 كان عدد سكان شيراز 1,204,882 نسمة. وتعد شيراز سادس أكبر مدينة في إيران بعد كلٍ من طهران ومشهد وأصفهان وتبريز وكرج', '<p>وتقع شيراز في منتصف أرض محافظة فارس، على ارتفاع 1486 مترا عن مستوى سطح البحر. وتقع بالقرب من جبال زاجروس، وتتمتع شيراز بجو لطيف يميزها عن المناطق القريبة منها كيزد وخوزستان. ويقع في غرب شيراز جبل دراك. وفي شمالها تقع جبال بمو، وسبزبوشان وجهل مقام وباباكوهي، وهذه الجبال تابعة لجبال زاجروس. يختلف اسم شيراز في الكتب والأوراق التاريخية، حيث تسمت شيراز بعدة أسماء منها &laquo;تیرازیس&raquo;، &laquo;شیرازیس&raquo; و&laquo;شیراز&raquo;. وأيضاً لقبت شيراز بـ\"دار العلم\" في أيام الدولة الصفوية لكثرة رجال الدين فيها آنذاك. ومن الأسماء القديمة لها أيضاً شهر راز والمكان الأصلي لمدينة شيراز كان في قلعة أبونصر. شيراز كانت عاصمة لعدة دول تاريخية كالدولة الصفارية والدولة البويهية والدولة الزندية في (1750-1781). تشتهر شيراز بالشعراء، وقد أنجبت أشهر الشعراء الذين كتبوا باللغة الفارسية (كحافظ الشيرازي، وسعدي الشيرازي..)، وتشتهر أيضاً بالحدائق والزهور. اشتهرت شيراز أيضاً في التاريخ بصناعة النبيذ ويوجد إلى اليوم نبيذ يسمى باسم نبيذ شيراز .</p>', NULL, '71', '{\r\n     \"hotels\": {\r\n                  \"0\": { \"name\":\"هتل پاسارگاد\",\r\n                         \"descripion\":\"تقع شيراز في منتصف أرض محافظة فارس، على ارتفاع 1486 مترا عن مستوى سطح البحر. وتقع بالقرب من جبال زاجروس، وتتمتع شيراز بجو لطيف يميزها عن المناطق القريبة منها كيزد وخوزستان. ويقع في غرب شيراز جبل دراك. وفي شمالها تقع جبال بمو، وسبزبوشان وجهل مقام وباباكوهي، وهذه الجبال تابعة لجبال زاجروس.\"\r\n                       },\r\n\r\n                   \"1\": { \"name\":\"هتل پرسپولیس\",\r\n                          \"descripion\":\"تقع شيراز في منتصف أرض محافظة فارس، على ارتفاع 1486 مترا عن مستوى سطح البحر. وتقع بالقرب من جبال زاجروس، وتتمتع شيراز بجو لطيف يميزها عن المناطق القريبة منها كيزد وخوزستان. ويقع في غرب شيراز جبل دراك. وفي شمالها تقع جبال بمو، وسبزبوشان وجهل مقام وباباكوهي، وهذه الجبال تابعة لجبال زاجروس.\"\r\n                        }\r\n              },\r\n\r\n     \"services\": { \"0\":{\"wifi\":\"free transfer,free food,multi language\"}\r\n                 }\r\n}', '/images/cities/shiraz/image-01.jpg', '{\r\n    \"images\": {\r\n                \"0\":{\"title\":\"باغ ارم شیراز\",\r\n                     \"url\":\"/images/cities/shiraz/image-02.jpg\",\r\n                     \"description\":\" مترا عن مستوى سطح البحر. وتقع بالقرب من جبال زاجروس، وتتمتع شيراز بجو لطيف يميزها عن المناطق القريبة منها كيزد ن وجهل مقام وباباكوهي، وهذه الجبال تابعة لجبال زاجروس.\"\r\n                     },\r\n\r\n                 \"1\": {\"title\":\"تخت جمشید\",\r\n                       \"url\":\"/images/cities/shiraz/image-04.jpg\",\r\n                        \"description\":\"تقع شيراز في منتصف أرض محافظة فارس، على ارتفاع 1486 متوفي شمالها تقع جبال بمو، وسبزبوشان وجهل مقام وباباكوهي، وهذه الجبال تابعة لجبال زاجروس.\"\r\n                      },\r\n\r\n                 \"2\":{\"title\":\"حافظیه\",\r\n                       \"url\":\"/images/cities/shiraz/image-03.jpg\",\r\n                       \"description\":\"تقع شيراز فيجبال زاجروس، وتتمتع شيراز بجو لطيف يميزها عن المناطق القريبة منها كيزد وخوزستان. ويقع في غرب شيراز جبل دراك. وفي شمالها تقع جبال بمو، وسبزبوشان وجهل\"\r\n                     }\r\n\r\n             },\r\n     \"videos\": {\r\n                  \"0\":{\"title\":\"10 Awesome Things to Do in Shiraz, Iran!\",\r\n                       \"url\":\"/images/cities/shiraz/video-01.mp4\",\r\n \"description\":\"\"\r\n                       }\r\n               }\r\n}', '2019-10-31 15:36:16', '2019-11-16 10:24:44'),
(3, 'اصفهان', 'isfahan', 'النقل من المطار إلى الفندق، الوصول إلى الفندق والاستراحة، النقل من، الفندق إلى العيادة، التحدث مع طبيبك، القيام بالتحاليل الطبية،', '<p>اصفهان نصف جهان شهری در نزدیکی تهران</p>', 'dgfjkuigsvfbgfkyuefrwg', '31', NULL, NULL, NULL, '2019-11-19 11:10:18', '2019-11-19 11:10:18');

-- --------------------------------------------------------

--
-- Table structure for table `clinics`
--

CREATE TABLE `clinics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_code` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hospital_id` int(11) DEFAULT NULL,
  `tel` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '{}',
  `services` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '{}',
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `featured` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clinics`
--

INSERT INTO `clinics` (`id`, `name`, `alias`, `excerpt`, `description`, `address`, `location`, `city_code`, `hospital_id`, `tel`, `email`, `website`, `certificate`, `services`, `language`, `logo`, `featured_image`, `gallery`, `featured`, `created_at`, `updated_at`) VALUES
(1, 'کلینیک قلب تهران', 'heart-clinic', 'آنزیوگرافی، کاردیوگرافی،', '<p>مستشفى ميديكال بارك أنطاليا هو أول مستشفى معتمد من اللجنة الدولية المشتركة في أنطاليا ، منطقة البحر الأبيض المتوسط في تركيا. يضم المستشفى 10 غرف عمليات و 4 وحدات للعناية المركزة ، بسعة 206 سريرا و 84 عيادة.</p>', '', '', '21', 1, '+982135467895,+982145987632', 'info@nikanhospital.com', 'http://heartcilinic.com', '{}', '', '', '/storage/uploads/clinics/heart-clinic/dGdDUjj3QlWCaLy2AQ3059ZngCn1vE6SEsCPwun5.jpeg', '/storage/uploads/clinics/heart-clinic/wGpfKPRFFNO2usFSgkoPzNsvn9nsq59ZV7rE07PS.jpeg', '{}', 'on', '2019-10-16 14:41:17', '2019-11-22 08:46:27'),
(2, 'کلینیک تخصصی چشم نور تهران', 'eye-clinic', 'لیزیک، لازک، جراحی قرنیه', 'مستشفى ميديكال بارك أنطاليا هو أول مستشفى معتمد من اللجنة الدولية المشتركة في أنطاليا ، منطقة البحر الأبيض المتوسط في تركيا. يضم المستشفى 10 غرف عمليات و 4 وحدات للعناية المركزة ، بسعة 206 سريرا و 84 عيادة.', 'تهران بعد از تقاطع اول کوچه دوم، پلاک سوم، زنگ چهارم', '', '71', 2, '+9865489977,+982156449988', 'info@text.com', 'heartcilinic.com', '{}', '{}', 'fa,en,ar,fr,de,pe', '/images/clinics/eye-clinic/logo.jpg', '/images/clinics/eye-clinic/image-01.jpg', '{\r\n    \"1\": {\r\n        \"title\": \"example glossary\",\r\n	\"url\": \"/images/clinics/eye-care/image-01.jpg\",\r\n\"description\": \"این متن توضیح عکس گالری است\"\r\n            \r\n        \r\n    },\r\n    \"2\": {\r\n        \"title\": \"example glossary\",\r\n	\"url\": \"/images/clinics/eye-care/image-02.jpg\",\r\n\"description\": \"این متن توضیح عکس گالری است\"\r\n            \r\n        \r\n    }\r\n}', NULL, '2019-10-16 14:41:17', '2019-11-19 07:51:39'),
(3, 'کلینیک زیبایی ژوان', 'zhoan-cosmetic', 'ارائه خدمات زیبایی صورت', '<p>ارائه کلیه خدمات زیبایی صورت با کادر تخصصی</p>', 'تهران، خیابان اصلی', 'dgfjkuigsvfbgfkyuefrwg', '71', 2, '55513413,02157896423,0316598236', 'info@zhoan.com', 'http://zhoanclinic.com', NULL, NULL, NULL, NULL, NULL, NULL, 'on', '2019-11-19 05:57:37', '2019-11-19 06:02:14');

-- --------------------------------------------------------

--
-- Table structure for table `clinic_procedure`
--

CREATE TABLE `clinic_procedure` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `clinic_id` int(10) UNSIGNED NOT NULL,
  `procedure_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(19,2) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clinic_procedure`
--

INSERT INTO `clinic_procedure` (`id`, `clinic_id`, `procedure_id`, `price`) VALUES
(1, 1, 1, '1199.99'),
(2, 1, 5, NULL),
(3, 1, 6, '899.00');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `object_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_id` int(11) NOT NULL,
  `user_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(2,1) UNSIGNED NOT NULL,
  `status` enum('published','pending','spam','trash') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `object_type`, `object_id`, `user_ip`, `user_name`, `user_email`, `comment`, `rate`, `status`, `created_at`, `updated_at`) VALUES
(1, 'doctor', 1, '198.27.111.142', 'محسن عابدینی', 'ma843@yahoo.com', 'خلال ال20 سنة الماضية، زادت نسب البقاء على قيد الحياة عند مرضى سرطان الثدي (بالإنجليزية:Breast Cancer) مقارنةً بالماضي،', '4.5', 'published', '2019-10-24 11:18:00', NULL),
(2, 'doctor', 1, '198.27.111.142', 'امیر کرمی', 'amirkarami@yahoo.com', 'وجدت أحدى الدراسات أن اضطرابات ما بعد الصدمات النفسية', '3.5', 'published', '2019-10-21 23:18:00', NULL),
(3, 'doctor', 1, '198.27.111.142', 'سعید شیرازی', 'graphicophilia@gmail.com', 'حققت الجزائر إنجازات عديدة في القطاع الصحي، أهمها الحصول على شهادة خلوها من مرض الملاريا', '1.5', 'published', '2019-10-22 13:12:00', NULL),
(4, 'doctor', 1, '198.27.111.142', '', '', '', '1.5', 'published', '2019-10-22 13:12:00', NULL),
(5, 'procedure', 2, '198.27.111.142', 'محسن عابدینی', 'ma843@yahoo.com', 'عجب کلینیک خوبی بود :))', '4.5', 'published', '2019-10-24 11:18:00', NULL),
(6, 'procedure', 5, '198.27.111.142', 'امیر کرمی', 'amirkarami@yahoo.com', 'وجدت أحدى الدراسات أن اضطرابات ما بعد الصدمات النفسية', '3.5', 'published', '2019-10-21 23:18:00', NULL),
(7, 'clinic', 1, '198.27.111.142', 'سعید شیرازی', 'graphicophilia@gmail.com', 'حققت الجزائر إنجازات عديدة في القطاع الصحي، أهمها الحصول على شهادة خلوها من مرض الملاريا', '1.5', 'published', '2019-10-22 13:12:00', NULL),
(8, 'clinic', 1, '198.27.111.142', '', '', '', '1.5', 'published', '2019-10-22 13:12:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE `credits` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('gold','silver','bronze') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'bronze',
  `clinic` char(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `treatment` char(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `procedure` char(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `website` char(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `tel` char(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `address` tinyint(1) NOT NULL DEFAULT 1,
  `comment` char(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '4',
  `gallery` char(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `inquiry` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credits`
--

INSERT INTO `credits` (`id`, `name`, `alias`, `description`, `type`, `clinic`, `treatment`, `procedure`, `website`, `tel`, `address`, `comment`, `gallery`, `inquiry`, `created_at`, `updated_at`) VALUES
(1, 'نقره ای', 'silver', 'توضیحات بسته نقره ای \r\nبسته بسیار اقتصادی می باشد', 'silver', '3', '4', '6', '1', '2', 1, '4', '2', 0, NULL, NULL),
(2, 'برنزی', 'bronze', 'توضیحات بسته برنزی\r\nاین بسته به صورت پیشفرض برای همه فعال است', 'bronze', '2', '2', '2', '0', '0', 1, '1', '2', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `grade` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('men','women') COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` enum('adult','child') COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `family`, `alias`, `excerpt`, `description`, `address`, `tel`, `email`, `website`, `certificate`, `grade`, `gender`, `age`, `avatar`, `featured`, `created_at`, `updated_at`) VALUES
(1, 'رجب', 'شيرواني', 'rajab-shirvani', 'أكثر من 25 سنة من الخبرة وأكثر من 12000 عملية ناجحة (7000 عملية أنف)', '<div class=\"avia_textblock  \">\r\n<h3 style=\"text-align: right;\"><strong>ولد الدكتور رجب شيرواني</strong></h3>\r\n<p style=\"text-align: justify;\">في أذربيجان في إيران عام 1956، وبعد إنهاء دراسته الثانوية شارك في الامتحان الوطني لدخول الجامعات وكان ترتيبه هو السادس والخمسين من أصل آلاف المتقدمين إلى هذا الامتحان، وهذا ما أهله لدراسة الطب في إحدى أفضل الجامعات العامة في إيران، وبعد انتهائه من برنامج الطب العام اتبع برنامج طبيب مقيم في جامعة شهيد بهشتي للعلوم الطبية.</p>\r\n<p style=\"text-align: justify;\">مع أكثر من 25 سنة من الخبرة في عمليات التجميل قام الدكتور شيرواني بإجراء أكثر من 7000 عملية أنف بالإضافة إلى آلاف العمليات الأخرى على الوجه. حيث يجري الدكتور شيرواني عملية أنف أو اثنتين كل يوم على رأس فريقه الجراحي من المتخصصين في مجالاتهم، والمدة الوسطية التي يستغرقها لإجراء عملية الأنف هو حوالي 4 ساعات، وهذا يعطي مؤشراً عن كم هو دقيق في عمله وكم يكرس وقته من أجل الحصول على نتائج مثالية.</p>\r\n<p style=\"text-align: justify;\">يعتقد الدكتور شيرواني أن &rdquo;عملية الأنف خليط من العلم والفن&hellip; وأنه لا يمكنك تحقيق شكل أنف فريد إلا بمزج العلم والفن معاً.&ldquo;</p>\r\n<p style=\"text-align: justify;\">يقول أيضاً إن لديه اعتقاداً راسخاً بصحة المريض وخاصةً بصحة وظيفة أنفه مما يجعله يتأكد من أن التنفس الطبيعي لن يتأثر من العملية.</p>\r\n<p style=\"text-align: justify;\">بالإضافة إلى عملية الأنف لدى الدكتور شيرواني موهبة الرسم، وقد تتلمذ على يد السيد جعفر بيتغار الذي هو رسام إيراني كبير كان أفضل تلاميذ كمال الملك.</p>\r\n</div>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: 149px; top: 38px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 'تهران، خیابان اصلی', '00989031239716', 'DrShirvani@ariamedtour.com', NULL, '{}', NULL, 'women', 'adult', '/images/doctors/rajab-shirvani.jpg', 'on', '2019-11-11 21:02:19', '2019-11-19 12:06:20'),
(2, 'معصومة \r\n', 'سعيدي', 'masoumeh-saeedi', 'أخصائية في الأنف والأذن والحنجرة، زمالة جراحة الرأس والرقبة', '<p style=\"text-align: justify;\"><span style=\"color: #000000;\">الدكتورة سعيدي هي واحدة من أكثر جراحي الأنف والحنجرة الإيرانيين شهرة. وهي متخصصة في جميع أنواع جراحة الأذن والجراحة المجهرية و الصوتية، جراحة أورام قاعدة الجمجمة، استعادة السمع، زراعة قوقعة الأذن، جراحة أورام الغدة و الفك السفلي، جراحة الحنجرة مثل استئصال الحنجرة، استئصال الغدة الدرقية، الجيوب الأنفية إندسكو. تلقت زمالة في علم الأذن كأخصائي في علم الأذن وأنتولاريغولوجيست وهي أيضا واحدة من الناشطين في تدريس علم الأذن في الجامعة كأستاذ مساعد.</span></p>', ' شارع جوردن، شارع نكار، بناء 21، هـ ', '00982122251279', 'DrSaeedi@ariamedtour.com', 'DrSaeedi.com', '{}', '', 'women', '', '/images/doctors/masoumeh-saeedi.jpg', NULL, '2019-11-11 21:02:19', '2019-11-19 09:57:47'),
(3, 'حسن', 'روحانی', 'hasan-rouhani', 'دکترای تشویش اذهان عمومی و بر هم زدن نظم جامعه', '<p>متخصص فریب افکار عمومی</p>', 'تهران، خیابان اصلی', '55513413,02157896423,0316598236', 'abscivilengineering@gmail.com', 'http://hasanrouhani.com', NULL, NULL, 'men', 'adult', '', 'on', '2019-11-19 06:26:46', '2019-11-19 06:26:46');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_procedure`
--

CREATE TABLE `doctor_procedure` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` int(10) UNSIGNED NOT NULL,
  `procedure_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_procedure`
--

INSERT INTO `doctor_procedure` (`id`, `doctor_id`, `procedure_id`) VALUES
(1, 1, 2),
(2, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `facilitators`
--

CREATE TABLE `facilitators` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `certificate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `services` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `credit` enum('gold','silver','bronze') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'bronze',
  `logo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilitators`
--

INSERT INTO `facilitators` (`id`, `name`, `alias`, `excerpt`, `description`, `address`, `tel`, `email`, `website`, `certificate`, `services`, `credit`, `logo`, `featured_image`, `featured`, `created_at`, `updated_at`) VALUES
(1, 'درمان سیر پارس', 'darman-seir-pars', 'شرکت درمان سیر پارس موسس سایت تریپومدیک', '<p>توضیح مختصر در مورد شرکت درمان سیر پارس</p>', NULL, '91014090', 'info@tripomedic.com', 'http://tripomedic.com', NULL, NULL, 'bronze', NULL, NULL, 'on', '2019-11-13 16:24:26', '2019-11-19 12:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` char(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_code` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `certificate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `services` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `credit` enum('gold','silver','bronze') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'bronze',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `featured` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `name`, `alias`, `excerpt`, `description`, `address`, `location`, `city_code`, `tel`, `email`, `website`, `certificate`, `services`, `credit`, `logo`, `featured_image`, `gallery`, `featured`, `created_at`, `updated_at`) VALUES
(1, 'مستشفى نيكان', 'nikan-hospital', 'افتتح مستشفى وفندق نيكان رسمياً في 27 حزيران عام 2011.', '<p>. وفي السنة الأولى للتقييم، حصل مستشفى نيكان على المرتبة الأولى في الاعتماد والسلامة للمرضى وأصبح أول مستشفى خاص في إيران يحصل على شهادة الجائزة الخضراء الدولية.</p>', 'شارع جوردن، شارع نكار، بناء 21،', 'dgfjkui', '21', '00982122251279,00982122251279', 'info@nikanhospital.com', 'http://nikanhospital.com', '{\"title\":\"iso 9001\",\"url\":\"images/hospitals/nikan-hospital/iso-9001.jpg\"}', '{\"title\":\"الشهادات والموافقات\",\"content\":\"شهادة إيبد لتوفير أفضل الخدمات للمرضى الدوليي الجائزة الخضراء العالمية عن طريق جمعية -الإدارة والاستشارافرنسا\"}', 'silver', NULL, '/images/hospitals/nikan/image-01.jpg', '{}', 'on', '2019-10-23 08:00:00', '2019-11-19 04:02:31'),
(2, 'مستشفى عرفان', 'erfan-hospital', 'تم إنشاء مستشفى عرفان الخاص في 12 كانون الأول 2006 لتقديم خدمات الرعاية الصحية والرعاية المتقدمة على أساس الالتزام بالقيم الإنسانية. يضم المستشفى 200 سرير نشط، بما في ذلك غرف خاصة، سريرين لكبار الشخصيات و 70 سريراً خاصاً، يقع المستشفى على مساحة 4480 متر م', '<div class=\"avia_textblock  \">\r\n<p>تم إنشاء مستشفى عرفان الخاص في 12 كانون الأول 2006 لتقديم خدمات الرعاية الصحية والرعاية المتقدمة على أساس الالتزام بالقيم الإنسانية. يضم المستشفى 200 سرير نشط، بما في ذلك غرف خاصة، سريرين لكبار الشخصيات و 70 سريراً خاصاً، يقع المستشفى على مساحة 4480 متر مربع ومساحة بناء 20.000 متر مربع في 9 طوابق. يعد هذا المستشفى واحد من المستشفيات الأكثر تجهيزاً في البلاد، والتي تأسست وفقاً لأحدث معايير تصميم و بناء المستشفيات ويمتلك المستشفى 14غرفة عمليات مجهزة بجميع التجهيزات للقيام بالعمليات الجراحية في المجالات المتخصص بها في المستشفى.</p>\r\n<p>إن وجود الأساتذة والأطباء ذوي الخبرة في هذا المركز جعل منه أفضل مستشفى خاص في إيران. فقد تم تجهيز هذا المستشفى بالمعدات الحديثة من أفضل العلامات التجارية في العالم واستخدام التقنيات الحديثة في التشخيص والعلاج والتخصص في مجال السياحة الطبية في هذا المستشفى حيث يقدم خدمة شاملة واسعة جنبا ً إلى جنب مع عملية الفحص ، والتشخيص والعلاج للمريض. يتم تدريب جميع موظفي المستشفى في مجال المرضى الدوليين، ويتقنون اللغة الإنجليزية. أيضا، المترجمين المختصين في اللغات الإنجليزية والعربية والتركية بشكل دائم في المستشفى للبقاء معكم حسب الحاجة. وقد حصل مستشفى عرفان الخاص على تصاريح رسمية وشهادات دولية للامتثال للمعايير الطبية الدولية. لذلك، يمكنك زيارة المستشفى للحصول على الخدمات الطبية والجراحية، وفي الوقت نفسه التمتع بمناطق الجذب السياحي في طهران من أجل استكمال خطة العلاج الخاصة بك.</p>\r\n</div>', 'شارع جوردن، شارع نكار، بناء 21،', NULL, '21', '0098219871279,00982126541279', 'info@erfanhospital.com', 'http://erfanhospital.com', '{\"title\":\"iso 12000\",\"url\":\"images/hospitals/erfan-hospital/iso-12000.jpg\"}', '{\"title\":\"الشهادات والموافقات\",\"content\":\"شهادة إيبد لتوفير أفضل الخدمات للمرضى الدوليي الجائزة الخضراء العالمية عن طريق جمعية -الإدارة والاستشارافرنسا\"}', 'silver', NULL, '/images/hospitals/erfan/image-01.jpg', '{}', 'on', '2019-10-23 08:00:00', '2019-11-19 04:10:32'),
(3, 'بقیه الله اعظم', 'baqiatallah', 'بیمارستان دولتی سپاه', '<p>بیمارستان دولتی واقع در خیابان ملاصدرا</p>', 'تهران، خیابان ملاصدرا، بعد ازشیخ بهایی', NULL, '21', '55513413,02157896423,0316598236', 'mkmz@ymail.com', 'http://baq.com', NULL, NULL, 'silver', '', '', NULL, 'on', '2019-11-19 11:30:55', '2019-11-19 11:36:20');

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_20_053155_create_hospitals_table', 1),
(5, '2019_10_20_063728_create_clinics_table', 1),
(6, '2019_10_20_064151_create_treatments_table', 1),
(7, '2019_10_20_064957_create_procedures_table', 1),
(8, '2019_10_20_065030_create_credits_table', 1),
(9, '2019_10_20_065102_create_cities_table', 1),
(10, '2019_10_20_065124_create_packages_table', 1),
(11, '2019_10_20_065154_create_doctors_table', 1),
(12, '2019_10_20_065212_create_comments_table', 1),
(13, '2019_10_20_065233_create_attachments_table', 1),
(14, '2019_10_20_065303_create_facilitators_table', 1),
(15, '2019_10_23_062019_create_blogs_table', 1),
(16, '2019_10_23_152638_create_inquiries_table', 1),
(17, '2019_10_28_072512_create_pages_table', 2),
(18, '2019_10_28_123309_add_logo_to_clinics', 3),
(19, '2019_10_28_200353_change_city_code_hospitals', 4),
(20, '2019_10_28_202535_add_city_code_to_clinics', 5),
(21, '2019_10_29_102425_create_clinic_procedure_table', 6),
(22, '2019_10_29_103331_create_doctor_procedure_table', 6),
(23, '2019_10_31_133215_add_parent_to_treatments', 7),
(24, '2019_11_17_080145_crete_subscribe_list', 8),
(25, '2019_11_17_090722_create_subscribes_list_table', 9),
(26, '2019_11_18_052503_create_blog_procedure_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `procedure_id` int(11) NOT NULL,
  `facilitator_id` int(11) DEFAULT NULL,
  `published_date` timestamp NULL DEFAULT current_timestamp(),
  `expire_date` timestamp NULL DEFAULT NULL,
  `price` decimal(19,2) UNSIGNED NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `services` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `alias`, `excerpt`, `description`, `procedure_id`, `facilitator_id`, `published_date`, `expire_date`, `price`, `featured`, `featured_image`, `gallery`, `services`, `created_at`, `updated_at`) VALUES
(1, 'عرض تجميل الانف', 'nose-job', 'تتساءل حول ما تقدمه هذه العروض لك على أرض الواقع؟', 'يعرض هذا الفيلم الوثائقي كيفية الخدمات الطبية النموذجية التي نقدمها للمرضى الذين يزورونا من خارج ايران. شاهد الفيديو للتعرف على الخدمات التي نقدمها للسائحين من خلال عروض متكاملة تشمل جميع الخدمات المجانية. يعرض هذا الفيلم الوثائقي لسائحة طبية تدعى سيسيليا قامت برحلة من النرويج إلى إيران عن طريقنا من أجل إجراء عملية تجميل الانف بالإضافة إلى إجراء تجميل للأسنان. تم تصوير كافة مراحل رحلتها ابتداءً من لحظة وصولها إلى المطار حتى مغادرتها إيران.', 2, 1, '2019-10-23 15:48:29', '2020-01-16 08:00:00', '980.00', 1, '/images/packages/nose-job/image-01.jpg', '{\"title\":\"تنگ کردن سوراخ بینی\",\"desc\":\"تصاویر جراحی بینی در ایران توضیح عکس\",\"url\":\"images/packages/hair-transplant/image-02.jpg\",\r\n\"title\":\"جراحی زیبایی بینی\",\"desc\":\"تصاویر جراحی بینی در ایران توضیح عکس\",\"url\":\"images/packages/hair-transplant/image-04.jpg\",\r\n\"title\":\"کوچک کردن بینی\",\"desc\":\"تصاویر جراحی زیبایی بینی در ایران توضیح عکس\",\"url\":\"images/packages/hair-transplant/image-03.jpg\"}', '{}', '2019-10-23 08:00:00', '2019-11-18 09:35:10'),
(2, 'عرض زراعة الشعر', 'hair-transplant', 'العيادة وزيارات الطبيب ، الفحوصات المخبرية ، تكاليف المستشفى ، الرعاية ما بعد الجراحة ، التعافي والمتابعة', 'العيادة وزيارات الطبيب ، الفحوصات المخبرية ، تكاليف المستشفى ، الرعاية ما بعد الجراحة ، التعافي والمتابعة\r\nتأشيرة العلاج\r\nسوف نصدر لك رمز تصريح التأشيرة\r\nالنقل\r\nخدمة الاستقبال في المطار والنقل من الفندق إلى العيادة / المستشفى وبالعكس\r\nالإقامة\r\nفندق 3 نجوم أو 5 نجوم (حسب اختيار المريض) بالقرب من العيادة أو المستشفى\r\nالخدمات الأخرى المجانية\r\nعشاء ترحيبي ومساعدة على مدار 24 ساعة عند الطلب ومترجم فوري وشريحة جوال وإنترنت', 1, 2, '2019-10-23 15:48:29', '2020-01-16 08:00:00', '1275.99', 1, '/images/packages/hair-transplant/image-01.jpg', '{\r\n\"title\":\"کاشت مو\",\"desc\":\"تصاویر کاشت مو در ایران توضیح عکس\",\"url\":\"images/packages/hair-transplant/image-01.jpg\"}', '{}', '2019-10-23 08:00:00', '2019-11-18 09:35:14');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `alias`, `content`, `featured_image`, `created_at`, `updated_at`) VALUES
(1, 'العایادات', 'clinics', '<p>صحتك هي الأصول الأكثر قيمة الخاص بك. اختر من بين أفضل العيادات الطبية في إيران حتى يتمكن اختصاصيو الرعاية الصحية المتمرسون وذوي الخبرة من مساعدتك على الشفاء. يمكنك الحصول على نتائج بحث أفضل عن طريق تحديد الخيارات التالية. “تیریبومدیک” سوف نقدم لك الأفض', '', '2019-10-14 17:12:43', NULL),
(2, 'املأ النموذج أدناه ، وسنقوم بالرد عليك في أقرب وقت ممكن', 'inquiry', '<h1>ما هو تیریبومدیک!؟</h1>\r\n<p>فيما يلي قسم خاص بنا وأشياء من هذا القبيل ، وشروحات عامة لكيفية عملنا وتفسيرات شاملة لسلسلة أعمالنا حول كيفية توجيه الناس للمجيء إلى إيران للعلاج</p>\r\n<h2>المزيد من الخيارات تأتي هنا</h2>\r\n<p>سيتم نشر شرح هنا. لدينا مساحة كافية. نحن جميعًا جيدون جدًا وترجم هذا النص لاحقًا دون أن أستخدم مترجم Google ونحن جيدون جدًا</p>\r\n<h3>الذي يرتب الإجراءات المتعلقة برحلتي الطبية</h3>\r\n<p>تتحدث هنا عن تنسيق عمل الجمهور في إيران وتؤكد لها أننا مهنيون ، مع تقديم الدعم الكامل والخدمة</p>\r\n<h3>أي نوع من العيادات المدرجة في تیریبومدیک</h3>\r\n<p>فيما يلي قسم خاص بنا وأشياء من هذا القبيل ، وشروحات عامة لكيفية عملنا وتفسيرات شاملة لسلسلة أعمالنا حول كيفية توجيه الناس للمجيء إلى إيران للعلاج</p>\r\n<h2>المزيد من الخيارات تأتي هنا</h2>\r\n<p>سيتم نشر شرح هنا. لدينا مساحة كافية. نحن جميعًا جيدون جدًا وترجم هذا النص لاحقًا دون أن أستخدم مترجم Google ونحن جيدون جدًا</p>\r\n<h3>أي نوع من العيادات المدرجة في تیریبومدیک</h3>\r\n<p>فيما يلي قسم خاص بنا وأشياء من هذا القبيل ، وشروحات عامة لكيفية عملنا وتفسيرات شاملة لسلسلة أعمالنا حول كيفية توجيه الناس للمجيء إلى إيران للعلاج</p>', '', '2019-10-14 17:12:43', NULL),
(3, 'أهلا وسهلا بك إلى إيران', 'cities', '<h1>أين هي أفضل الوجهات السياحية الصحية في إيران؟</h1>\r\n<p>إيران وجهة رائعة للسياحة الطبية لأسباب عديدة. الخبرة العالية للأطباء الإيرانيين وكذلك المستشفيات والعيادات بالمعايير الدولية هي وجهة جيدة. اختيار واحدة من المدن لروا</p>', '/images/cities/header.jpg', '2019-10-14 17:12:43', NULL),
(4, 'متطلبات التأشيرة الطبية الإيرانية', 'visa', '<h1>أين هي أفضل الوجهات السياحية الصحية في إيران؟</h1>\r\n<p>إيران وجهة رائعة للسياحة الطبية لأسباب عديدة. الخبرة العالية للأطباء الإيرانيين وكذلك المستشفيات والعيادات بالمعايير الدولية هي وجهة جيدة. اختيار واحدة من المدن لروا</p>', '/images/visa/header.jpg', '2019-10-14 17:12:43', NULL),
(5, 'العثور على الميسر بالنسبة لي', 'facilitators', '<h1>العثور على الميسر بالنسبة لي</h1>\r\n<p>الميسرون هي الشركات التي ستدير كل علاجك في إيران. من عملية تقديم ملف طبي في بلدك ، إلى الحصول على تأشيرة والحصول على التذاكر والعلاج الطبي مع هذه الشركات. سوف يقوم الميسرون بإدارة كل ما تبذلونه من أماكن الإقامة ، والنقل ، والفنادق ، وأكثر من ذلك ، حتى تستمتع بسلام وأمن كاملين في موقع فريد في السياحة الطبيةا</p>', '/images/facilitators/header.jpg', '2019-10-14 17:12:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `procedures`
--

CREATE TABLE `procedures` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('treatment','procedure') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'procedure',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` enum('adult','child') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'adult',
  `featured` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('men','women') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ;

--
-- Dumping data for table `procedures`
--

INSERT INTO `procedures` (`id`, `type`, `name`, `alias`, `excerpt`, `description`, `parent`, `icon`, `age`, `featured`, `gender`, `featured_image`, `gallery`, `created_at`, `updated_at`) VALUES
(1, 'procedure', 'عرض تكبير الصدر', 'breast-augmentation', 'العيادة وزيارات الطبيب ، الفحوصات المخبرية ، التصوير الطبي ، تكاليف عملية تجميل الصدر في أفضل المستشفيات ،', '<div class=\"avia_textblock  \">\r\n<p><span style=\"font-size: 24px;\"><strong>ما نقدمه</strong></span></p>\r\n<ul>\r\n<li><strong>عملية تكبير الصدر</strong><br />العيادة وزيارات الطبيب ، الفحوصات المخبرية ، التصوير الطبي ، تكاليف عملية تجميل الصدر في أفضل المستشفيات ، الرعاية ما بعد الجراحة ، التعافي والمتابعة</li>\r\n<li><strong>تأشيرة العلاج</strong><br />سوف نصدر لك رمز تصريح التأشيرة</li>\r\n<li><strong>النقل</strong><br />خدمة الاستقبال في المطار والنقل من الفندق إلى العيادة / المستشفى وبالعكس</li>\r\n<li><strong>الإقامة</strong><br />فندق 3 نجوم أو 5 نجوم (حسب اختيار المريض) بالقرب من العيادة أو المستشفى</li>\r\n<li><strong>الخدمات الأخرى المجانية</strong><br />عشاء ترحيبي ومساعدة على مدار 24 ساعة عند الطلب ومترجم فوري وشريحة جوال وإنترنت</li>\r\n</ul>\r\n</div>', 2, 'breast-augmentation', 'child', 'on', 'men', 'images/treatments/breast-augmentation/image-01.jpg', '{}', '2019-10-23 08:00:00', '2019-11-19 10:53:33'),
(2, 'treatment', 'الجراحة التجمیلیة', 'plastic-surgery', 'إن التكلفة المعقولة والاقتصادية هي واحدة من أهم الأسباب التي تدفع الناس لاختيار ايران من أجل إجراء عمليات التجميل فيها', '<div>\r\n<h4 style=\"text-align: right;\"><strong>تكلفة عمليات التجميل في ايران</strong></h4>\r\n<p>إن التكلفة المعقولة والاقتصادية هي واحدة من أهم الأسباب التي تدفع الناس لاختيار ايران من أجل إجراء عمليات التجميل فيها، والتكلفة المنخفضة للجراحة التجميلية في ايران لا تعني إطلاقاً أن الجودة أو الأمان منخفضين فيها بل له أسباب اقتصادية بحتة. ليست تكلفة عمليات التجميل في ايران منخفضة فحسب، بل إن اسعار الخدمات الأخرى التي ستحتاجها منخفضة أيضاً مما يجعل السفر إلى ايران مسألة اقتصادية تجعلك توفر الكثير من المال.</p>\r\n</div>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: 425px; top: -12px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 0, 'voyager-lab', '', NULL, NULL, '/images/treatments/plastic-surgery/image-01.jpg', '{}', '2019-10-31 14:20:06', '2019-11-19 12:16:28'),
(3, 'treatment', 'طب العيون', 'eye-care', 'هدفنا هو مساعدتك في استعادة بصرك', '<div  \" itemprop=\"text\"><p >”أغمض عينَيَّ فيموت العالَم بأسره من حولي، أفتح جفنَيَّ فيولد العالم ثانيةً“، يبدو أن هذا الاقتباس من الشاعرة الأمريكية سلفيا بلاث هو أفضل ما يصف دور العين في حياتنا (رغم أنها لم تكن تقصد أن توصل هذه الفكرة في شعرها)، إذ يجب أخذ احتمال فقدان الرؤية على محمل الجد وينبغي علاج أمراض العيون أبكر ما يمكن. إننا نقدم لك أكثر علاجات العيون فعاليةً واقتصاديةً في ايران في أفضل المستشفيات وعيادات العيون التخصصية ونرتب لك كل ما تحتاج أيضاً للحصول على رحلة علاجية ميسرة ومريحة وخالية من المشقات.</p>\r\n\r\n<p >العین هي العضو المسؤول عن الرؤية. كل ما يحصل في هذا العالم وفي المحيط نراه من خلال هذا العضو الصغیر و المهم. و أي خلل صغیر يصيب هذا العضو الصغير يمكن أن نشعر به بسهولة. العین يمکن أن تصاب بحوادث و أمراض کثیرة: امراض عفونیة ، ماء اسود ، ماء ابیض ، و … . ومن الممكن أن يلجأ متخصصي طب العيون إلى العمل الجراحي لعلاج العين.<br>\r\nأولئك الذين يبحثون عن علاج لأمراض العين من خلال التكنولوجيا المتقدمة وفي مراكز طبية منخفضة التكلفة ولا یریدون أن یبقوا فی قوائم انتظار طويلة من المراجعين من أجل العلاج فالمراكز المتخصصة في إيران هي الخيار الصحيح بالنسبة لهم.</p>\r\n<p >إيران لدیها أخصائيين خبيرين في طب العيون كما أن مراكز طب العيون في ايران مجهزة بمجموعة متنوعة من المعدات المتطورة. وقد سجل طب العيون في ايران العديد من المكاسب الاستثنائية وأجريت عمليات جراحية و علاجية على درجات عالية من النجاح.</p>\r\n</div>', 0, '', '', NULL, NULL, '/images/treatments/eye-care/image-01.jpg', '{}', '2019-10-31 14:20:06', '2019-11-19 14:24:54'),
(4, 'treatment', 'علاج العقم', 'fertility', 'الأطفال هبة من الله، لكن قد يتطلب الأمر أحياناً خوض\r\nمغامرة للحصول على هذه الهبة. نحن هنا لمساعدتك\r\nفي جعل هذه المغامرة ذكرى طيبة مع علاج العقم في ايران', '<div itemprop=\"text\">\r\n<h1>علاج العقم في ايران: كل ما تحتاج معرفته</h1>\r\n<p>ايران هو البلد الأبرز في الشرق الأوسط في مجال علاج اصعب حالات العقم وأحد البلدان الأكثر تطوراً في العالم. بفضل مصادقة قادة البلد المتدينين على التقنيات المساعدة على التوالد وبفضل السياسات الاجتماعية والسكانية في العقود الأخيرة فقد حققت ايران تقدماً عظيماً في حلول علاج العقم.</p>\r\n<p>في الماضي كان يتوجب على الأزواج الإيرانيين الذين يعانون من حالات العقم السفر إلى الخارج كي يتلقوا العلاج، لكن اليوم أصبحت ايران وجهة هامةً للرجال والنساء الذين يعانون من عدم الإنجاب من البلدان الأخرى، حيث تشكل التكاليف المعقولة لإجراءات علاج العقم في ايران مقارنة بالأسعار الباهظة في بعض البلدان الأخرى إضافةً إلى النوعية الجيدة لمثل هذه الخدمات في البلد هي الأسباب الرئيسية لشعبية معالجات العقم في ايران.</p>\r\n\r\n<p >تنعم ايران حالياً بأكثر من 70 مركزاً متخصصاً يقدم خدمات متعددة للأزواج الذين لا يستطيعون إنجاب طفل لوحدهم وتشمل تشخيص عدم الخصوبة واستشارة خبراء الجينات ومعالجات مختلفة مثل التخصيب خارج الرحم (طفل الأنبوب) IVF على سبيل المثال. ومع التقدم الملفت في أطفال الأنابيب منذ ولادة الطفل الأول في البلد عام 1988عبر هذه التقنية كانت ايران تستقطب الأزواج من كل أنحاء الشرق الأوسط وحتى من بلدان بعيدة مثل استراليا وإندونيسيا.</p>\r\n<h2>لماذا تعتبر ايران ناجحة جداً في علاج العقم؟</h2>\r\n<p>تم تبني التقنيات المساعدة لعلاج العقم عند الرجال والنساء من قبل السلطات الدينية الشيعية في ايران بشكل أكثر انفتاحاً من البلدان السنية الأخرى التي ما تزال بعض أشكال معالجات العقم عبر شخص ثالث – مثل التبرع بالنطاف والبويضات – لا تزال مستهجنة فيها.</p>\r\n\r\n<p >بينما تبنى القادة الدينيون السنة في البلدان الإسلامية الأخرى العمليات التي لا تشمل جهة ثالثة – مثل التبرع بالنطاف والبويضات والأجنة – فقد قدم قائد ايران والمرجع الشيعي (السلطة الدينية) علي خامنئي فتوى تشرع مثل هذه العمليات في ظروف معينة، وهذا ما يفسر سبب توجه العديد من الأزواج من البلدان السنية إلى ايران بشكل متزايد كي يخضعوا لعمليات العقم (<a href=\"#\">اقرأ المزيد</a> عن أطفال الأنابيب والتبرع بالمشيج في الإسلام السني مقابل الإسلام الشيعي.)</p>\r\n\r\n<p >عيادات علاج العقم في ايران مجهزة حالياً بأحدث التقنيات وباختصاصيي خصوبة ذوي خبرة عالية يقدمون الخدمات للأزواج العقيمين من مختلف البلدان. وحسب <a href=\"h\">مقالة</a> بعنوان ”الجمهورية الإسلامية لصناعة الأطفال“ منشورة في مجلة فورين بوليسي يعتقد البروفيسور في جامعة أكسفورد سورايا تريمايين ومؤسس مجموعة دراسات التكاثر والخصوبة FRSG أن ”ايران تندفع نحو الأمام مستخدمة (هذه التقنيات) بكل أشكالها وتصل إلى أماكن لا تستطيع  البلدان السنية في المنطقة أن تلحقها إليها.“</p>\r\n\r\n<p >يقول الدكتور أحمد فسوق المسؤول في معهد رويان وهو معهد بحثي وتعليمي مرموق متخصص بأبحاث الخلايا الجذعية ومعالجة العقم والأبحاث الطبية الحيوية والتحويلية والسريرية: ”يتم حالياً انجاز عمل بارز في مجال العقم في معهد رويان بحيث تستخدم أدنى فرصة لخصوبة الأزواج من أجل التلقيح.“ ويعلن أنه يتم استخدام التقنيات المتقدمة لإنضاج البويضات عند المرأة واستخراج نطاف الخصية عند الرجال لعلاج العقم عند النساء والرجال على التوالي.</p>\r\n\r\n<p >أحد العوامل المساهمة في التقدم الحقيقي في علاج العقم في ايران هو انتشار ظاهرة العقم بين الأزواج الايرانيين، حيث يعاني 20.2% من الأزواج الايرانيين من العقم حسب إحصاء وطني شامل، مما يعني أن واحداً من كل خمسة أزواج غير قادر على إنجاب طفل لوحدهم. بالنظر إلى أن البلد قد عكس سياسة الضبط السكاني فإن الحكومة تشجع الآن السكان على إنجاب المزيد من الأطفال وذلك بتقديمها حوافز للأزواج العقيمين لإنجاب أطفال بما في ذلك دورة مجانية لطفل الأنبوب توافقاً مع هذه السياسة.</p>\r\n<h2>تكلفة علاج العقم في ايران</h2>\r\n<p >تقدم ايران علاج العقم الأرخص في الشرق الأوسط، فمثلاً تكلف دورة علاج أطفال الانابيب حوالي 3,500$ وهي أقل بكثير من العديد من البلدان الأخرى. ونظراً لأن العديد من معالجات العقم تتطلب بقاء الزوجين في البلد لعدة أسابيع فإن تكلفة الإقامة والنفقات الأخرى المتكبدة خلال إقامتهم تصبح هامة جداً.</p>\r\n\r\n<p >بما أن ايران بلد رخيص للمسافرين مع تكاليف إقامة معقولة جداً فإنه لن يتوجب على مرشحي علاج العقم أن يصرفوا الكثير من المال على معالجتهم في ايران، لذلك لا تتردد في الاتصال بنا كي تحصل على عرض سعر مجاني عن علاج العقم في ايران.</p>\r\n<h2>عيادات علاج العقم في ايران</h2>\r\n<p >يعمل في ايران أكثر من 70 مركزاً صحياً وعيادة للخصوبة مرخصاً رسمياً من وزارة الصحة. ومراكز علاج العقم في ايران إما أن تكون مندمجة مع مستشفيات أو تابعة لمراكز أبحاث أخرى. ويتم تجهيز مراكز علاج العقم في طهران ومشهد ويزد واصفهان وشيراز وتبريز ومدن أخرى في ايران لتقدم الخدمات إلى الأزواج من كل أنحاء العالم وتخلق التجربة السارة في إنجاب طفل لهم.</p>\r\n\r\n<p>علاجات العقم المقدمة في مراكز علاج العقم في ايران تشمل: التخصيب خارج الرحم  IVFو التخصيب داخل الرحم IUI وحقن الحيوانات المنوية في البويضةICSI  و تقنية حقن حيوانات منوية مختارة في البويضة IMSI وإنضاج البويضات في المختبر IVM واستخراج الحيوانات المنوية المجهري TESE  وتحريض الإباضة والفحص الجيني قبل الزرع PGS والتشخيص الوراثي قبل الزرع PGD والتبرع بالبويضات والتبرع بالنطاف والتبرع بالأجنة والأم الحاضنة وعلاج متلازمة المبيض المتعدد الكيسات PCOS وغيرها.</p>\r\n\r\n<p >نحن في آريا مدتور لكوننا الشركة الرائدة في تسهيل السياحة الطبية نساعدك على ترتيب علاج الخصوبة في أحد أفضل مراكز علاج العقم في ايران، ولكي تعرف أكثر عن خدمات كل عيادة ورسومها وأطبائها اتصل بنا على واتس آب أو البريد الإلكتروني (الموجود في آخر الصفحة) أو عبر استمارة الاتصال (في أعلى الصفحة أو في أسفلها).</p>\r\n\r\n<br><br>\r\n </div>', 0, '', 'adult', 'on', NULL, '/images/treatments/fertility/image-01.jpg', '{}', '2019-10-31 14:20:06', '2019-11-19 14:25:24'),
(5, 'procedure', 'شد الجفون(بليفاروبلاستي)', 'eyelid-surgery', 'حل سريع وذو تكلفة معقولة للجفون المترهلة. نقدم لك عملية شد الجفون في ايران بأسعار معقولة', '<div itemprop=\"text\">\r\n    <h1>شد الجفون في ايران: كل ما تريد معرفته</h1>\r\n    <p >إذا كنت تضع في اعتبارك إيران لإجراء جراحة تجميل الجفون فقد ينتابك الفضول حيال معرفة ما\r\n        الذي تتضمنه هذه العملية وكيف يتم إجراؤها وما هي تكلفتها بالإضافة إلى العديد من المواضيع الأخرى. لهذا فإننا سنعرض\r\n        لك هنا كل ما تحتاج معرفته عن <strong>عملية شد الجفون في ايران</strong>.</p>\r\n\r\n    <h2>ما هي عملية تجميل وشد الجفون؟</h2>\r\n  \r\n<p >إن الجميع متفقون على أن للعينين تأثيراً كبيراً على جمالية الوجه. لكن هنالك بعض العوامل التي تجعل العيون تبدو كهلة وغير جذابة. وغالبا ما تكون بسبب الوراثة أو كجزء من آثار التقدم بالسن. وكمثال على ذلك فإن الجفون المترهلة تجعلك تبدو أكبر سنا كما أنها تضعف الرؤية أيضاً. إن تجميل وشد الجفون هو الحل في هذه الحالة.</p>\r\n<p >إن عملية شد الجفون – والتي تدعى أحياناً باسم عملية تجميل الجفون أو تجميل العيون والجفون – هي عملية جراحية تصحيحية تتم فيها إزالة الجلد الزائد من الجفن العلوي أو السفلي أو من كليهما معا. لا تؤدي عملية شد ترهلات الجفون إلى تغيير شكل العيون، بل تقوم بشد الجلد المتدلي حول العينين. وبالنتيجة ستحصل على مظهر أكثر شباباً.</p>\r\n\r\n\r\n<div id=\"attachment_21541\" ><img\r\n    src=\"loopy-eyelids.jpg\" alt=\"شد الجفون في ايران\"><p >عين ذات جفون مترهلة بحاجة إلى إجراء شد الجفون.</p></div>\r\n<h2>هل إيران مكان مناسب من أجل إجراء جراحة شد الجفون؟</h2>\r\n<p >إن كنت من أولئك الذين يشاهدون وسائل الإعلام الكبرى فقط ولا يبحثون عن الحقيقة فإن السفر إلى إيران لإجراء عملية جراحية سيكون آخر خيار قد تأخذه باعتبارك. وهذا ناتج عن أن وسائل الإعلام تصور إيران على أنها بلد من غير الآمن السفر إليه.</p>\r\n<p >لكن هذه ليست هي الحقيقة على الإطلاق. فرغم أنها تقع جغرافياً في منطقة تعج بالمشكلات السياسية والأمنية إلا أن إيران تتمتع بالأمن مثل الكثير من الدول المتقدمة على وجه الأرض.</p>\r\n<p >أما بالحديث عن الجودة فإن إيران تضم الكثير من المستشفيات والعيادات التخصصية الحديثة فائقة التجهيز. والأطقم الطبية في هذه المستشفيات قد تلقوا تأهيلاً عالياً، كما أن الكثير من الأطباء قد تخرجوا من أفضل الجامعات والمستشفيات في الدول الغربية أو على الأقل قد حصلوا على الزمالة أو خضعوا لدورات تخصصية في تلك الجامعات والمستشفيات.</p>\r\n<p >أما ما يتعلق بجراحة تجميل ترهلات الجفون فيمكنك بسهولة أن تعتمد على أطباء تجميل الجفون الإيرانيين بما أن هذه العملية هي رابع أشهر عملية تجميل في إيران. وبالإضافة لذلك فإن بعض جراحي تجميل الجفون الإيرانيين مشهورون على مستوى العالم نظراً للعمل المذهل الذي قاموا به للارتقاء بهذه العملية.</p>\r\n<p >أحد الأمثلة على هؤلاء هو البروفيسور محسن بهمني كشكولي. فقد حصل الدكتور كشكولي على الزمالة في مجال عمليات ترميم وتجميل العيون من بريطانيا. وهو نائب رئيس مجلس الشرق الأوسط وإفريقيا لطب العيون (MEACO).</p>\r\n<div><img\r\n    src=\"iranian-surgeons.jpg\"\r\n    alt=\"افضل دكتور تجميل الجفون في ايران\"><p>يتم إجراء عملية تجميل الجفون في ايران لدى أفضل أطباء التجميل الإيرانيين</p></div>\r\n<h3>متى تبرز الحاجة لإجراء جراحة شد الجفون؟</h3>\r\n<p >يتم اختيار جراحة تجميل ترهلات الجفون من قبل الآلاف من الأشخاص من أجل تحسين مظهر العيون. ويمكنك أن تضع في اعتبارك التخلص من الجفون المترهلة باستخدام طريقة شد الجفون في الحالات التالية:</p>\r\n\r\n<ul>\r\n 	<li >إن كنت تريد معالجة الانتفاخ والأكياس المتورمة تحت العينين</li>\r\n 	<li >إن كانت لديك جفون سفلية متهدلة</li>\r\n 	<li >إن كانت جفونك المتدلية تعيق الرؤية لديك</li>\r\n 	<li >إن كان لديك جلد زائد وتجاعيد في الجفون السفلية، أو</li>\r\n 	<li >إن كنت تبدو أكبر سناً مما أنت عليه أو إن كنت تبدو متعباً دائماً بسبب مظهر الجفون.</li>\r\n</ul>\r\n<h2>كيف تتم عملية شد الجفون في ايران؟</h2>\r\n<p >تتم عملية تجميل الجفون إما تحت التخدير الموضعي أو العام. وتستغرق العملية حوالي ساعة واحدة. وتبعاً للحالة فقد يتم إجراء هذه الجراحة على الجفون العلوية أو على الجفون السفلية تحت العين أو عليهما معاً.</p>\r\n<p >يقوم الجراح بوضع علامات دقيقة على بشرتك لتحديد مكان وكمية الجلد الزائد المطلوب إزالته. يتم إجراء شقوق دقيقة وحساسة في الجفن العلوي (على امتداد ثنية الجفن) أو السفلي (على امتداد ثنية الجفن السفلي أو داخل الجفن السفلي) أثناء الجراحة بحيث لن تكون هنالك أي ندوب مرئية بعد الجراحة.</p>\r\n<p >يقوم الجراح بعد ذلك بإزالة الجلد الزائد أو إعادة توضيعه وبشد العضلات وإغلاق الشقوق. ومن أجل الحصول على نتائج أفضل لعملية شد الجفون قد يقترح الجراح إجراء <a\r\n    href=\"\" target=\"_blank\" rel=\"noopener\">رفع الحواجب</a> أو <a\r\n    href=\"\" target=\"_blank\" rel=\"noopener\">شد الوجه</a> أيضاً في الوقت نفسه.</p>\r\n\r\n\r\n<div id=\"attachment_21543\" ><img\r\n    src=\"eyelid-surgery-procedure-iran.jpg\"\r\n    alt=\"كيف تتم عملية شد الجفون في ايران\" ><p>كيفية شد الجفون المترهلة.</p></div>\r\n<h2>تكلفة عملية شد الجفون في ايران</h2>\r\n<p >إن اسعار عمليات شد الجفون في ايران معقولة أكثر مما هي عليه في أي مكان من العالم. فقد يتوجب عليك أن تدفع بين 800$ و1,800$ من أجل عملية تجميل الجفون في ايران بحسب كونك تريد إجراء تجميل الجفون العلوية والسفلية معاً وتبعاً للدكتور الذي تختاره. لكن سعر عملية شد الجفون نفسها تكلف حوالي 3,000$ إلى 5,000$ أو أكثر في الولايات المتحدة. وهي تكلف بين 2,500$ و6,500$ في بريطانيا.</p>\r\n\r\n<h2>الرعاية في فترة النقاهة بعد عملية شد الجفون</h2>\r\n<p >تستمر فترة النقاهة بعد عملية تجميل الجفون بين 10 أيام إلى 14 يوماً. وأثناء هذه الفترة ستتوقع أن تشاهد تورماً ورضوضاً. ويمكن للكمادات الباردة أن تخفف من هذا.</p>\r\n<p >قد تعاني من الألم والانزعاج لعدة أيام بعد العملية. كما أن الاحمرار وجفاف العينين عادي أيضاً. وربما يصف لك طبيبك قطرات عيون للتخفيف من هذا.</p>\r\n<p >وإحدى أهم نصائح ما بعد عملية شد الجفون هي تجنب وضع الماكياج والعدسات اللاصقة لمدة أسبوع على الأقل بعد العملية. فهذا سيخفف خطر العدوى ويساعد أيضاً في تقليل التورم. ستشفى الشقوق الجراحية في غضون أسبوعين.</p>\r\n\r\n<h2>عملية شد الجفون بالليزر</h2>\r\n<p >عندما يقوم الجراح باستخدام الليزر من أجل إجراء الشقوق للوصول إلى مكان تراكم الدهون فوق العين أو تحتها فإنه هذه العملية تدعى باسم ’شد الجفون بالليزر‘ أو ’تجميل الجفون بالليزر‘. إن إجراء العملية بهذه الطريقة يخفف من خطر حدوث الندبات، لكن الليزر يؤذي الأنسجة التي حول العين والتي لا يتم المساس بها في عملية شد ترهلات الجفون التقليدية. يعاني المرضى من ألم ورضوض أقل عند إجرائهم لعملية شد الجفون بالليزر رغم أن التورم يزداد في هذه الحالة. على كل حال سوف يقرر الطبيب الجراح فيما إذا كان من الأفضل لك إجراء عملية تجميل الجفون بالليزر أو بالطريقة العادية.</p>\r\n\r\n<h2>عملية الجفن المزدوج</h2>\r\n<p>عادةً ما يولد الناس في شرق آسيا بجفون مفردة أي من دون طية جفن على جفونهم العلوية. عملية الجفن المزدوج – والتي تعرف أيضاً باسم <em>عملية تجميل الجفن الآسيوي</em> أو <em>عملية الجفن الشرقي</em> – تهدف إلى تحسين مظهر الجفن العلوي لدى هؤلاء الناس عير إنشاء طية اصطناعية فيه.</p>\r\n<p>هناك طريقتان يمكنك واحدة منهما من أجل خلق طية في الجفن العلوي، إحداهما تَستخدم شقاً جراحياً في حين أن الأخرى توظف طريقة خالية من الشقوق.</p>\r\n<p>في الطريقة الأولى يتم إنشاء طية في الجفن العلوي من أجل إعطاء مظهر أكثر يقظةً لعيون المريض، وتحقيقاً لهذه الغاية يقوم الجراح بإجراء عدة شقوق على طول الجفن، تتم إزالة بعض الدهون والجلد في هذه العملية ثم يتم إغلاق الجرح.</p>\r\n<p>مع أنه تتم أيضاً إزالة بعض الدهون في هذه العملية إلا أنها تختلف في طبيعتها عن عملية تجميل شد الجفون التقليدية التي يتم إجراؤها للتخلص من الجفون المترهلة.</p>\r\n<p>في الطريقة الثانية يقوم الجراح بإجراء قطبة في الجفن العلوي، لن يتم قص الجلد هنا لكن يتم إنشاء طية باستخدام غرزات القطب التي يتم تثبيتها تحت الجفن العلوي.</p>\r\n<p>يتم إجراء عملية الجفن المزدوج في ايران من قِبل بعض جراحي التجميل الإيرانيين، وتكلفة جراحة الجفن المزدوج في ايران معقولة أكثر مما هي عليه في بلدان أخرى مثل كوريا الجنوبية وماليزيا.</p>\r\n\r\n    <p>يتم إجراء عملية الجفن المزدوج من أجل إضافة طية للجفن العلوي للعيون الآسيوية.</p>\r\n<h2>مقارنة بين عملية شد ترهلات الجفون وعملية الجفن المتدلي</h2>\r\n<p >قبل المضي في المقارنة دعنا نوضح ما هو <em>الجفن المتدلي</em> وما هي <em>عملية الجفن المتدلي</em>. يشير الجفن المتدلي إلى ترهل الجفن بسبب ضعف في العضلة التي تحمله. وهذا ليس أمراً ناتجاً عن التقدم في السن أو عن ارتخاء الجلد. فبعض الناس يولدون وهم يعانون من هذه الحالة.</p>\r\n<p >إن عملية الجفن المتدلي هي إجراء جراحي يصحح هذا التشوه. وفي هذه العملية يقوم الجراح بالتعامل مع العضلة التي فوق العين من أجل تحسين المظهر وتحقيق رؤية أفضل. في بعض الحالات يتم إجراء عملية الجفن المتدلي للأطفال لمساعدتهم على الرؤية.</p>\r\n<p >في حين يمكن إجراء عملية شد ترهلات الجفون على الجفن العلوي والسفلي إلا أن عملية الجفن المتدلي تركز فقط على الجفن العلوي. وفي عملية الجفن المتدلي يقوم الجراح بتثبيت العضلة التي فوق العين ليساعد المريض على تحقيق رؤية أفضل. بالمقابل يقوم الجراح في عملية شد الجفون بإزالة الدهون والجلد الزائد من حول العينين.</p>\r\n</div>', 3, '', '', 'on', NULL, '/images/treatments/eyelid-surgery/image-01.jpg', '{}', '2019-10-31 14:48:00', '2019-11-19 14:25:31'),
(6, 'procedure', 'تجميل العيون', 'oculoplastic-surgery', 'إجراءات تجميل العين وحول العين في\r\nالعيادات التخصصية الحديثة في ايران\r\nعن طريق آريا مدتور بأفضل الأسعار.', '<div itemprop=\"text\">\r\n    <h1><span>تجميل العيون في ايران: كل ما تحتاج معرفته</span></h1>\r\n    <p>إذا كنت تبحث عن مكان تجري فيه عملية تجميل للعيون آمنة بتكلفة منخفضة فإن لدى ايران الكثير لتقدمه لك، ولمساعدتك في\r\n        فهم كيف يتم إجراء تجميل شكل العين في هذا البلد فها هو كل ما تحتاج معرفته عن <span\r\n            style=\"color: #000000;\"><strong>تجميل العيون في ايران</strong>.</span></span></p>\r\n\r\n    <h2><span>ما هو تجميل العيون؟</span></h2>\r\n\r\n    <div>\r\n        <br>\r\n        <span>\r\n<p>تجميل العيون يغطي طيفاً واسعاً من الإجراءات الجراحية والعلاجات من أجل تجميل محيط العين وتصحيح اختلالات شكل العين ومشاكل قنوات الدمع ومحجر العين، وبهذا فإن هذه العمليات تتعامل مع تشوهات البنى المحيطة بالعين وليس كرة العين بحد ذاتها، وكذلك فإن إجراءات تجميل وترميم العين تقع أيضاً في هذه الفئة من العمليات.</span></p>\r\n        <p>يتم إجراء عمليات تجميل العين للرجال والنساء على حد سواء، ويتم إجراؤها لأشخاص من كل الأعمار لعدد كبير من\r\n            الأسباب، كما أن بعض أنواع عمليات تجميل العين تشكل ضرورات طبية، مثلاً قد تؤثر بعض مشاكل الجفون على مظهر الشخص\r\n            كما قد تؤثر على بصره وصحته بشكل عام.</span></p>\r\n        <p>الأنواع الأساسية لعمليات تجميل العين تتضمن <a href=\"https://ariamedtour.com/ar/procedures/eyelid-surgery/\"\r\n                                                         target=\"_blank\" rel=\"noopener\">تجميل جفون العين</a> (إزالة\r\n            الجلد المترهل حول العينين) وتجميل مدمع العين وتجميل محجر العين (تجميل تجويف العين) وتجميل العيون الجاحظة\r\n            وتجميل العيون الغائرة وعملية الانطواء الجفني وتصحيح الاغتراب الجفني وتجميل العين عند الأطفال وتجميل العيون\r\n            المبطنة وتوسيع وتكبير العين و<a href=\"https://ariamedtour.com/ar/procedures/brow-lift-surgery/\"\r\n                                            target=\"_blank\" rel=\"noopener\">شد الحواحب والجبهة</a> و<a\r\n                href=\"https://ariamedtour.com/ar/procedures/facelift/\" target=\"_blank\" rel=\"noopener\">شد الوجه</a>\r\n            وتجميل تحت العين وغيرها من العمليات الأخرى.</span></p>\r\n\r\n        <h2><span>لماذا ايران من أجل تجميل العيون؟</span></h2>\r\n        <p>عندما تريد اختيار مكان لإجراء عمليتك فيه فأنت بحاجة إلى أسباب خاصة تدفعك لاختيار بلد مثل ايران، ونحن نكتب هذه\r\n            الفقرة لنبين لك الأسباب التي تجعل ايران على مفضلةً على غيرها من البلدان.</span></p>\r\n        <p>في المقام الأول قد تكون لديك هواجس حيال نتائج عملية تجميل العيون التي ستقدم على إجرائها، وبما أن العديد\r\n            يجادلون لإثبات تفوق علاجاتهم فيبدو أن إيجاد الوجهة الموثوقة أمر صعب، ولهذا فإننا نقدم لك بعض الحقائق\r\n            والإحصائيات عن إيران:</span></p>\r\n\r\n        <ul>\r\n            <li><span>تم تصنيف إيران بين أفضل 10 وجهات في العالم لإجراء عمليات التجميل.</span></li>\r\n            <li><span>تم تتويج هذا البلد على أنه عاصمة عملية تجميل الانف في العالم.</span></li>\r\n            <li><span>معدل إجراء عمليات التجميل في ايران بالنسبة لعدد السكان يزيد بنسبة تتراوح بين مرتين و7 مرات عما هو عليه في الولايات المتحدة الأمريكية.</span>\r\n            </li>\r\n            <li><span>في مجال تجميل العين وما حولها تتمتع ايران بعدد هائل من أطباء تجميل وترميم العين الذين لا يشق لهم غبار في هذا الاختصاص.</span>\r\n            </li>\r\n            <li><span>كافة جراحي التجميل الإيرانيين حاصلون على البورد التخصصي وقد تخرج الكثير منهم من أفضل كليات الطب في الدول الغربية ولديهم زمالات معتبرة في هذا الاختصاص.</span>\r\n            </li>\r\n        </ul>\r\n        <p>لحسن الحظ فإن لدى الجراحين الإيرانيين معرفة وخبرة واسعتين في العديد من الاختصاصات الطبية بما في ذلك <a\r\n            href=\"https://ariamedtour.com/ar/procedures/eye-care/\" target=\"_blank\" rel=\"noopener\">طب العيون</a> وعمليات\r\n            ترميم وتجميل العين وجراحات محجر العين، حيث يتم إجراء مختلف أنواع عمليات تجميل العيون في ايران – بما في ذلك\r\n            تجميل الجفون ومحجر العين وعملية تجميل جحوظ العين (بروز العين) وتجميل سحب العين وتجميل حول العين وعلاج مجاري\r\n            الدمع وتجميل هالات العين السوداء وعمليات تجميل وترميم الوجه – بشكل يومي مع الحصول على نتائج مرضية\r\n            جداً.</span></p>\r\n        <p>يتم في هذه الأيام إجراء عمليات تجميل وترميم العين في ايران في عدد من أحدث العيادات التخصصية والمستشفيات\r\n            الموجودة في المدن الكبرى مثل طهران وشيراز ومشهد وأصفهان وتبريز وجزيرة كيش.</span></p>\r\n        <p>علاوةً على هذا فإن إيران تقدم أفضل العلاجات بأسعار متدنية لا تشكل إلا جزءاً صغيراً فقط من تكلفة العلاجات\r\n            نفسها في البلدان الأخرى، حيث يوفر الكثير من الناس بين 30% و60% من التكلفة إن قاموا بإجراء عمليات تجميل العين\r\n            في ايران.</span></p>\r\n        <h2><span>أنواع علاجات تجميل وترميم العين</span></h2>\r\n        <p>بحسب المشكلة التي يعاني منها الشخص وبحسب كون العلاج لأهداف تجميلية أم طبية فإن هناك مقاربتين أساسيتين لهذه\r\n            الإجراءات:</span></p>\r\n\r\n        <ul>\r\n            <li><strong><span>تجميل العين بدون جراحة:</span></strong></li>\r\n        </ul>\r\n        <p><span>وهو يتضمن تجميل العين بالليزر وباستخدام تقنيات التقشير الكيميائي والأنظمة المنزلية للعناية بالبشرة وتجميل العين بالفيلر الجلدي للوجه بهدف تقليل تجاعيد الوجه ومنطقة ما تحت العين.</span>\r\n        </p>\r\n\r\n        <ul>\r\n            <li><strong><span>تجميل العين جراحياً:</span></strong></li>\r\n        </ul>\r\n        <p><span>وهذا يتضمن طيفاً واسعاً من الإجراءات بما في ذلك عملية تجميل الجفون من أجل إزالة الجلد المترهل الزائد أو الدهون أو العضلات الزائدة وعملية ترميم الجفون من أجل إزالة أورام الجفون ورفع الحواجب وشد الجبهة وتجديد شباب بشرة الوجه وعمليات الزراعة الترميمية.</span>\r\n        </p>\r\n        <p><span>كما تقع في هذه الفئة أيضاً علاجات تجميل العيون الشائعة والتي تصحح الجفون المطوية إلى الداخل أو الخارج وعمليات تجميل العين المصابة وتصحيح ترهل جفن العين العلوي أو السفلي، وبالإضافة لذلك فإن عمليات تجميل العين تتضمن العمليات التي تعالج مشاكل القنوات الدمعية والتي تعيد تدفق الدموع إلى وضعه الطبيعي وعملية محجر العين من أجل تصحيح اضطرابات وأذيات العين.</span>\r\n        </p>\r\n\r\n        <h2><span>كيفية تجميل العين في ايران؟</span></h2>\r\n        <p>\">يتم إجراء معظم عمليات تجميل العين تحت التخدير الموضعي وبعضها تحت تخدير للإحساس بالألم، ويختلف برنامج تجميل\r\n            العين تبعاً لنوع العملية حيث يبدأ جراح تجميل العين بإجراء شق صغير أو أكثر في مناطق مختلفة إما على الوجه أو\r\n            الحاجب أو الجمجمة.</span></p>\r\n        <p>مثلاً يتم إجراء عملية تجميل الجفون عبر شقوق جراحية في طيات الجفون، ويتم إجراء عملية المجاري الدمعية من خلال\r\n            الأنف أو في زاوية العين.</span></p>\r\n        <p>في الخطوة التالية قد يقوم الجراح بفصل الجلد عن الأنسجة التي تحته من أجل إزالة الدهون أو العضلات الزائدة أو\r\n            الجلد الزائد، وفي حالة عملية مجرى الدمع يتم إجراء فتحة صغيرة في مجرى الدمع الأنفي المسدود عبر الأنف\r\n            مباشرةً.</span></p>\r\n        <p>أما بالنسبة لعمليات شد الحواجب والجبين فيتم إجراء شقوق جراحية في فروة الرأس من أجل إزالة الدهون الزائدة\r\n            والجلد الزائد، وفي عملية شد الوجه يتم إجراء الجرح حول الأذن من أجل الوصول إلى العضلات ثم يتم شد الجلد وتتم\r\n            إعادة توضيع العضلات والأنسجة المرتبطة بها وتثبيتها في مكانها الجديد.</span></p>\r\n        <p>الوضع أكثر تعقيداً من أجل عملية محجر العين، فأحياناً تكون هناك حاجة لشقوق جراحية أكبر وقد تؤدي إلى ندوب ظاهرة\r\n            نوعاً ما، حيث تتم إزالة الأنسجة المتأذية عند الحاجة أو يتم إصلاحها بعناية مع الحفاظ على وظيفة العين\r\n            للبصر.</span></p>\r\n        <p>بعد الانتهاء من إعادة التموضع في كافة أنواع عمليات تجميل العين تتم خياطة الشقوق بعناية شديدة أو يتم غرزات\r\n            معدنية حسب الحالة.</span></p>\r\n        <img\r\n             src=\"https://ariamedtour.com/ar/wp-content/uploads/2019/06/oculoplastic-surgery-before-after.jpg\"\r\n             alt=\"تجميل العيون قبل وبعد\">\r\n        <p>صورة قبل وبعد تجميل العين تبين كيف بإمكان تجميل العين\r\n            أن يغير مظهرك بالكامل!</p></div>\r\n    <h2><span>تكلفة عملية تجميل العين في ايران</span></h2>\r\n    <p>لأن بعض جراحي تجميل العيون يتقاضون أجوراً مرتفعة جداً فمن الضروري أن يتم توضيح فوائد ومخاطر العلاج بشكل كامل قبل\r\n        الإقدام على إجراء العملية. إن تكلفة عملية تجميل العيون في ايران تتراوح بين <strong><span\r\n            style=\"color: #000000;\">1,500$ و4,000$</span></strong><span style=\"color: #000000;\"> تبعاً لنوع العملية وحالة المريض، وهذا السعر يتضمن تكلفة التخدير ورسوم العيادة أو المستشفى وغرفة العملية وتكاليف التحضير للعملية والأدوية اللازمة أثناء العملية وبعدها وكذلك سعر الأدوية التي يصفها الدكتور في المراجعة بعد العملية.</span></span>\r\n    </p>\r\n\r\n    <h2><span>فترة النقاهة بعد عملية تجميل العين</span></h2>\r\n    <p>يختلف طول فترة النقاهة بعد عملية تجميل العين باختلاف نوع العملية التي تم إجراؤها ويمكن أن يختلف بين شخص وآخر، لكن\r\n        فترة النقاهة تتراوح عادةً بين 7 أيام و14 يوماً.</span></p>\r\n    <p>قد يعاني المريض من بعض الألم والإزعاج والرضوض والتورم أثناء فترة النقاهة، وقد تعاني من ضبابية في الرؤية خلال\r\n        الأيام الأولى بعد العملية.</span></p>\r\n    <p>بشكل عام فإن فترة النقاهة من هذه العمليات ليست صعبة، كما أن عمليات تجميل العيون قليلة الآثار الجانبية والمضاعفات،\r\n        ومعظم المرضى أشاروا إلى أنهم عانوا من قليل من الإزعاج بعد العملية.</span></p>\r\n\r\n\r\n  <img\r\n       \r\n        src=\"https://ariamedtour.com/ar/wp-content/uploads/2019/06/beautiful-healthy-eyes.jpeg\"\r\n        alt=\"تجميل العين يساهم في الجمال\" >\r\n        <p>هل تعرفين كم تساهم عيناك في جمالك؟</p></div>\r\n    <h2><span>العناية بعد عملية تجميل العين</span></h2>\r\n    <p>تتعلق العناية الصحية بعد العملية بنوع العملية التي تم إجراؤها، وسوف يقوم طبيب تجميل العين بإعطاء المريض تعليمات\r\n        ونصائح كافية ليتبعها في المنزل، لكن من الضروري اتباع ما يلي من نصائح بعد عملية تجميل العيون:</span></p>\r\n\r\n    <ul>\r\n        <li><span>الاسترخاء والراحة الكافية في الأيام الأولى بعد العملية</span></li>\r\n        <li><span>وضع كمادات باردة على الجفون حسبما يطلب الطبيب</span></li>\r\n        <li>\r\n            <span>إبقاء الأنشطة البدنية في حدها الأدنى للمساعدة في الشفاء وتقليل التورم والرضوض والانزعاج والمضاعفات</span>\r\n        </li>\r\n        <li><span>تجنب إجراء التمارين الرياضية أو رفع الأوزان الثقيلة لمدة أسبوع على الأقل بعد العملية.</span></li>\r\n    </ul>\r\n    <br><br><br><br>\r\n    </span>\r\n</div>\r\n</div>', 3, '', '', NULL, NULL, '/images/oculoplastic-surgery/image-01.jpg', '{}', '2019-10-31 15:00:21', '2019-11-19 14:25:04'),
(7, 'procedure', 'اطفال الانابيب', 'ivf', 'إن عملية اطفال الانابيب التي نقدمها لكم في آريا مدتور من خلال عروض شاملة ونجريها في أفضل مراكز علاج العقم في ايران بنسب نجاح عالية يمكن أن تحقق لكم أحلامكم في إنجاب الأطفال بإذن الله', '<div itemprop=\"text\">\r\n    <h1><span>تجميل العيون في ايران: كل ما تحتاج معرفته</span></h1>\r\n    <p>إذا كنت تبحث عن مكان تجري فيه عملية تجميل للعيون آمنة بتكلفة منخفضة فإن لدى ايران الكثير لتقدمه لك، ولمساعدتك في\r\n        فهم كيف يتم إجراء تجميل شكل العين في هذا البلد فها هو كل ما تحتاج معرفته عن <span\r\n            style=\"color: #000000;\"><strong>تجميل العيون في ايران</strong>.</span></span></p>\r\n\r\n    <h2><span>ما هو تجميل العيون؟</span></h2>\r\n\r\n    <div>\r\n        <br>\r\n        <span>\r\n<p>تجميل العيون يغطي طيفاً واسعاً من الإجراءات الجراحية والعلاجات من أجل تجميل محيط العين وتصحيح اختلالات شكل العين ومشاكل قنوات الدمع ومحجر العين، وبهذا فإن هذه العمليات تتعامل مع تشوهات البنى المحيطة بالعين وليس كرة العين بحد ذاتها، وكذلك فإن إجراءات تجميل وترميم العين تقع أيضاً في هذه الفئة من العمليات.</span></p>\r\n        <p>يتم إجراء عمليات تجميل العين للرجال والنساء على حد سواء، ويتم إجراؤها لأشخاص من كل الأعمار لعدد كبير من\r\n            الأسباب، كما أن بعض أنواع عمليات تجميل العين تشكل ضرورات طبية، مثلاً قد تؤثر بعض مشاكل الجفون على مظهر الشخص\r\n            كما قد تؤثر على بصره وصحته بشكل عام.</span></p>\r\n        <p>الأنواع الأساسية لعمليات تجميل العين تتضمن <a href=\"https://ariamedtour.com/ar/procedures/eyelid-surgery/\"\r\n                                                         target=\"_blank\" rel=\"noopener\">تجميل جفون العين</a> (إزالة\r\n            الجلد المترهل حول العينين) وتجميل مدمع العين وتجميل محجر العين (تجميل تجويف العين) وتجميل العيون الجاحظة\r\n            وتجميل العيون الغائرة وعملية الانطواء الجفني وتصحيح الاغتراب الجفني وتجميل العين عند الأطفال وتجميل العيون\r\n            المبطنة وتوسيع وتكبير العين و<a href=\"https://ariamedtour.com/ar/procedures/brow-lift-surgery/\"\r\n                                            target=\"_blank\" rel=\"noopener\">شد الحواحب والجبهة</a> و<a\r\n                href=\"https://ariamedtour.com/ar/procedures/facelift/\" target=\"_blank\" rel=\"noopener\">شد الوجه</a>\r\n            وتجميل تحت العين وغيرها من العمليات الأخرى.</span></p>\r\n\r\n        <h2><span>لماذا ايران من أجل تجميل العيون؟</span></h2>\r\n        <p>عندما تريد اختيار مكان لإجراء عمليتك فيه فأنت بحاجة إلى أسباب خاصة تدفعك لاختيار بلد مثل ايران، ونحن نكتب هذه\r\n            الفقرة لنبين لك الأسباب التي تجعل ايران على مفضلةً على غيرها من البلدان.</span></p>\r\n        <p>في المقام الأول قد تكون لديك هواجس حيال نتائج عملية تجميل العيون التي ستقدم على إجرائها، وبما أن العديد\r\n            يجادلون لإثبات تفوق علاجاتهم فيبدو أن إيجاد الوجهة الموثوقة أمر صعب، ولهذا فإننا نقدم لك بعض الحقائق\r\n            والإحصائيات عن إيران:</span></p>\r\n\r\n        <ul>\r\n            <li><span>تم تصنيف إيران بين أفضل 10 وجهات في العالم لإجراء عمليات التجميل.</span></li>\r\n            <li><span>تم تتويج هذا البلد على أنه عاصمة عملية تجميل الانف في العالم.</span></li>\r\n            <li><span>معدل إجراء عمليات التجميل في ايران بالنسبة لعدد السكان يزيد بنسبة تتراوح بين مرتين و7 مرات عما هو عليه في الولايات المتحدة الأمريكية.</span>\r\n            </li>\r\n            <li><span>في مجال تجميل العين وما حولها تتمتع ايران بعدد هائل من أطباء تجميل وترميم العين الذين لا يشق لهم غبار في هذا الاختصاص.</span>\r\n            </li>\r\n            <li><span>كافة جراحي التجميل الإيرانيين حاصلون على البورد التخصصي وقد تخرج الكثير منهم من أفضل كليات الطب في الدول الغربية ولديهم زمالات معتبرة في هذا الاختصاص.</span>\r\n            </li>\r\n        </ul>\r\n        <p>لحسن الحظ فإن لدى الجراحين الإيرانيين معرفة وخبرة واسعتين في العديد من الاختصاصات الطبية بما في ذلك <a\r\n            href=\"https://ariamedtour.com/ar/procedures/eye-care/\" target=\"_blank\" rel=\"noopener\">طب العيون</a> وعمليات\r\n            ترميم وتجميل العين وجراحات محجر العين، حيث يتم إجراء مختلف أنواع عمليات تجميل العيون في ايران – بما في ذلك\r\n            تجميل الجفون ومحجر العين وعملية تجميل جحوظ العين (بروز العين) وتجميل سحب العين وتجميل حول العين وعلاج مجاري\r\n            الدمع وتجميل هالات العين السوداء وعمليات تجميل وترميم الوجه – بشكل يومي مع الحصول على نتائج مرضية\r\n            جداً.</span></p>\r\n        <p>يتم في هذه الأيام إجراء عمليات تجميل وترميم العين في ايران في عدد من أحدث العيادات التخصصية والمستشفيات\r\n            الموجودة في المدن الكبرى مثل طهران وشيراز ومشهد وأصفهان وتبريز وجزيرة كيش.</span></p>\r\n        <p>علاوةً على هذا فإن إيران تقدم أفضل العلاجات بأسعار متدنية لا تشكل إلا جزءاً صغيراً فقط من تكلفة العلاجات\r\n            نفسها في البلدان الأخرى، حيث يوفر الكثير من الناس بين 30% و60% من التكلفة إن قاموا بإجراء عمليات تجميل العين\r\n            في ايران.</span></p>\r\n        <h2><span>أنواع علاجات تجميل وترميم العين</span></h2>\r\n        <p>بحسب المشكلة التي يعاني منها الشخص وبحسب كون العلاج لأهداف تجميلية أم طبية فإن هناك مقاربتين أساسيتين لهذه\r\n            الإجراءات:</span></p>\r\n\r\n        <ul>\r\n            <li><strong><span>تجميل العين بدون جراحة:</span></strong></li>\r\n        </ul>\r\n        <p><span>وهو يتضمن تجميل العين بالليزر وباستخدام تقنيات التقشير الكيميائي والأنظمة المنزلية للعناية بالبشرة وتجميل العين بالفيلر الجلدي للوجه بهدف تقليل تجاعيد الوجه ومنطقة ما تحت العين.</span>\r\n        </p>\r\n\r\n        <ul>\r\n            <li><strong><span>تجميل العين جراحياً:</span></strong></li>\r\n        </ul>\r\n        <p><span>وهذا يتضمن طيفاً واسعاً من الإجراءات بما في ذلك عملية تجميل الجفون من أجل إزالة الجلد المترهل الزائد أو الدهون أو العضلات الزائدة وعملية ترميم الجفون من أجل إزالة أورام الجفون ورفع الحواجب وشد الجبهة وتجديد شباب بشرة الوجه وعمليات الزراعة الترميمية.</span>\r\n        </p>\r\n        <p><span>كما تقع في هذه الفئة أيضاً علاجات تجميل العيون الشائعة والتي تصحح الجفون المطوية إلى الداخل أو الخارج وعمليات تجميل العين المصابة وتصحيح ترهل جفن العين العلوي أو السفلي، وبالإضافة لذلك فإن عمليات تجميل العين تتضمن العمليات التي تعالج مشاكل القنوات الدمعية والتي تعيد تدفق الدموع إلى وضعه الطبيعي وعملية محجر العين من أجل تصحيح اضطرابات وأذيات العين.</span>\r\n        </p>\r\n\r\n        <h2><span>كيفية تجميل العين في ايران؟</span></h2>\r\n        <p>\">يتم إجراء معظم عمليات تجميل العين تحت التخدير الموضعي وبعضها تحت تخدير للإحساس بالألم، ويختلف برنامج تجميل\r\n            العين تبعاً لنوع العملية حيث يبدأ جراح تجميل العين بإجراء شق صغير أو أكثر في مناطق مختلفة إما على الوجه أو\r\n            الحاجب أو الجمجمة.</span></p>\r\n        <p>مثلاً يتم إجراء عملية تجميل الجفون عبر شقوق جراحية في طيات الجفون، ويتم إجراء عملية المجاري الدمعية من خلال\r\n            الأنف أو في زاوية العين.</span></p>\r\n        <p>في الخطوة التالية قد يقوم الجراح بفصل الجلد عن الأنسجة التي تحته من أجل إزالة الدهون أو العضلات الزائدة أو\r\n            الجلد الزائد، وفي حالة عملية مجرى الدمع يتم إجراء فتحة صغيرة في مجرى الدمع الأنفي المسدود عبر الأنف\r\n            مباشرةً.</span></p>\r\n        <p>أما بالنسبة لعمليات شد الحواجب والجبين فيتم إجراء شقوق جراحية في فروة الرأس من أجل إزالة الدهون الزائدة\r\n            والجلد الزائد، وفي عملية شد الوجه يتم إجراء الجرح حول الأذن من أجل الوصول إلى العضلات ثم يتم شد الجلد وتتم\r\n            إعادة توضيع العضلات والأنسجة المرتبطة بها وتثبيتها في مكانها الجديد.</span></p>\r\n        <p>الوضع أكثر تعقيداً من أجل عملية محجر العين، فأحياناً تكون هناك حاجة لشقوق جراحية أكبر وقد تؤدي إلى ندوب ظاهرة\r\n            نوعاً ما، حيث تتم إزالة الأنسجة المتأذية عند الحاجة أو يتم إصلاحها بعناية مع الحفاظ على وظيفة العين\r\n            للبصر.</span></p>\r\n        <p>بعد الانتهاء من إعادة التموضع في كافة أنواع عمليات تجميل العين تتم خياطة الشقوق بعناية شديدة أو يتم غرزات\r\n            معدنية حسب الحالة.</span></p>\r\n        <img\r\n             src=\"https://ariamedtour.com/ar/wp-content/uploads/2019/06/oculoplastic-surgery-before-after.jpg\"\r\n             alt=\"تجميل العيون قبل وبعد\">\r\n        <p>صورة قبل وبعد تجميل العين تبين كيف بإمكان تجميل العين\r\n            أن يغير مظهرك بالكامل!</p></div>\r\n    <h2><span>تكلفة عملية تجميل العين في ايران</span></h2>\r\n    <p>لأن بعض جراحي تجميل العيون يتقاضون أجوراً مرتفعة جداً فمن الضروري أن يتم توضيح فوائد ومخاطر العلاج بشكل كامل قبل\r\n        الإقدام على إجراء العملية. إن تكلفة عملية تجميل العيون في ايران تتراوح بين <strong><span\r\n            style=\"color: #000000;\">1,500$ و4,000$</span></strong><span style=\"color: #000000;\"> تبعاً لنوع العملية وحالة المريض، وهذا السعر يتضمن تكلفة التخدير ورسوم العيادة أو المستشفى وغرفة العملية وتكاليف التحضير للعملية والأدوية اللازمة أثناء العملية وبعدها وكذلك سعر الأدوية التي يصفها الدكتور في المراجعة بعد العملية.</span></span>\r\n    </p>\r\n\r\n    <h2><span>فترة النقاهة بعد عملية تجميل العين</span></h2>\r\n    <p>يختلف طول فترة النقاهة بعد عملية تجميل العين باختلاف نوع العملية التي تم إجراؤها ويمكن أن يختلف بين شخص وآخر، لكن\r\n        فترة النقاهة تتراوح عادةً بين 7 أيام و14 يوماً.</span></p>\r\n    <p>قد يعاني المريض من بعض الألم والإزعاج والرضوض والتورم أثناء فترة النقاهة، وقد تعاني من ضبابية في الرؤية خلال\r\n        الأيام الأولى بعد العملية.</span></p>\r\n    <p>بشكل عام فإن فترة النقاهة من هذه العمليات ليست صعبة، كما أن عمليات تجميل العيون قليلة الآثار الجانبية والمضاعفات،\r\n        ومعظم المرضى أشاروا إلى أنهم عانوا من قليل من الإزعاج بعد العملية.</span></p>\r\n\r\n\r\n  <img\r\n\r\n        src=\"https://ariamedtour.com/ar/wp-content/uploads/2019/06/beautiful-healthy-eyes.jpeg\"\r\n        alt=\"تجميل العين يساهم في الجمال\" >\r\n        <p>هل تعرفين كم تساهم عيناك في جمالك؟</p></div>\r\n    <h2><span>العناية بعد عملية تجميل العين</span></h2>\r\n    <p>تتعلق العناية الصحية بعد العملية بنوع العملية التي تم إجراؤها، وسوف يقوم طبيب تجميل العين بإعطاء المريض تعليمات\r\n        ونصائح كافية ليتبعها في المنزل، لكن من الضروري اتباع ما يلي من نصائح بعد عملية تجميل العيون:</span></p>\r\n\r\n    <ul>\r\n        <li><span>الاسترخاء والراحة الكافية في الأيام الأولى بعد العملية</span></li>\r\n        <li><span>وضع كمادات باردة على الجفون حسبما يطلب الطبيب</span></li>\r\n        <li>\r\n            <span>إبقاء الأنشطة البدنية في حدها الأدنى للمساعدة في الشفاء وتقليل التورم والرضوض والانزعاج والمضاعفات</span>\r\n        </li>\r\n        <li><span>تجنب إجراء التمارين الرياضية أو رفع الأوزان الثقيلة لمدة أسبوع على الأقل بعد العملية.</span></li>\r\n    </ul>\r\n    <br><br><br><br>\r\n    </span>\r\n</div>\r\n</div>', 4, '', 'adult', NULL, NULL, '/images/ivf/image-01.jpg', '{}', '2019-10-31 15:01:50', '2019-11-19 14:25:07');
INSERT INTO `procedures` (`id`, `type`, `name`, `alias`, `excerpt`, `description`, `parent`, `icon`, `age`, `featured`, `gender`, `featured_image`, `gallery`, `created_at`, `updated_at`) VALUES
(8, 'procedure', 'تحريض الاباضة', 'ovulation-induction', 'طرق فعالة وبسيطة التكلفة من أجل تحريض الإباضة في أفضل مراكز علاج العقم في إيران من أجل مساعدة جسمك على العمل بشكل طبيعي لتوليد ما يكفي من البويضات من أجل حصول حمل بشكل طبيعي', '        <div \" itemprop=\"text\"><p >لدى بعض النساء إباضة\r\n            أقل من اللازم أو ليست لديهن إباضة أبداً، وعدم انتظام الإباضة أو انقطاع الإباضة يؤدي إلى عدم انتظام في دورة\r\n            الطمث الشهرية، لهذا إذا لم تكن الإباضة تحدث من تلقاء نفسها عند المرأة وكانت في سن الإنجاب وإن لم تكن تتطور\r\n            لديها جريبات ناضجة كل شهر أو حتى إن كانت هذه الجريبات الناضجة تتطور لكن ليس بشكل منتظم مثلما هي الحال لدى\r\n            النساء الأخريات فقد يكون من المستحيل أو الصعب جداً أن يحصل لديها حمل بشكل اعتيادي، ولهذا يُعد تحريض الاباضة\r\n            أحد مراحل <a href=\"\" target=\"_blank\" rel=\"noopener\">علاج\r\n                العقم</a> لدى هذه الفئة من النساء اللواتي تعانين من مشاكل الإباضة هذه. وبمعزل عن هذا يؤدي عدم انتظام\r\n            دورة الطمث إلى أثر كبير على الحالة النفسية للمرأة ونومها وشعرها وجلدها وعلى جودة حياتها اليومية بشكل عام،\r\n            وهنا ينصح بإجراء تحريض الاباضة لتلك السيدة التي تعاني من هذه الحالة.</p>\r\n            <p><img src=\"https://ariamedtour.com/ar/wp-content/uploads/2018/10/ovulation-induction-for-fertility.jpg\"\r\n                    alt=\"تحريض الإباضة\"></p>\r\n            <h2><span style=\"color: #000000;\">أسباب انقطاع الإباضة أو عدم انتظامها</span>\r\n            </h2>\r\n            <p>قد ينشأ انقطاع الإباضة أو عدم انتظامها عن عدد من الأسباب لكن أسبابه الأساسية\r\n                هي التوتر وتقلبات الوزن ومتلازمة تكيس المبايض (PCOS)، ومن الأسباب الأخرى لعدم انتظام الإباضة يمكن\r\n                الإشارة إلى اضطرابات الغدة الدرقية والنخامية وارتفاع مستوى البرولاكتين بالإضافة إلى فشل المبايض، وفشل\r\n                المبيض بدوره قد ينجم عن علاج السرطان أو عن الوصول إلى سن انقطاع الطمث.</p>\r\n            <p>لمعرفة تطور الجريبات يتم إجراء تصوير حوضي بالأمواج فوق الصوتية للوصول إلى\r\n                بطانة الرحم، كما يمكن أيضاً إجراء فحوصات للدم من أجل قياس مستويات الهرمونات لتحديد الفترة من الشهر التي\r\n                تكون المرأة فيها في أفضل خصوبة ممكنة (الفترة التي من المرجح أكثر بالنسبة للمرأة أن تحصل لديها الإباضة في\r\n                كل شهر).</p>\r\n            <p>حتى تتم معالجة مشاكل الإباضة بنجاح &nbsp;يجب تحديد المسبب الأساسي لها، ولهذا\r\n                يجب إجراء عدة تحاليل دم بالإضافة إلى صورة بالأمواج فوق الصوتية (إيكو) للرحم، فمن خلال تحاليل الدم يجب\r\n                تحديد مستويات هرمونات الغدة الدرقية والبرولاكتين وهرمون FSH والتستوسترون والهرمونات الذكرية الأخرى، يجب\r\n                أيضاً فحص المبيض لمعرفة فيما إذا كان قادراً على الاستجابة للعلاج أم لا. التراكيز العالية من FSH (أكثر من\r\n                10) والتراكيز المنخفضة من AMH في بداية دورة الطمث تشير إلى احتمال فشل المبيض، وفي مثل هذه الحالات لن\r\n                يكون العلاج ناجحاً، وهكذا إذا كانت الإباضة الأقل من اللازم أو انقطاع الإباضة أثراً ثانوياً لمرض آخر فلن\r\n                ينجح تحريض الإباضة ما لم تتم معالجة السبب الأساسي.</p>\r\n            <p><img class=\"aligncenter size-full wp-image-9983\"\r\n                    src=\"https://ariamedtour.com/ar/wp-content/uploads/2018/10/fertility-ovarian-induction.jpg\"\r\n                    alt=\"تحريض الإباضة جزء من علاج العقم\" ></p>\r\n            <h2><span style=\"color: #000000;\">من هن النساء المؤهلات لتحريض الاباضة؟</span>\r\n            </h2>\r\n            <p>النساء اللواتي لديهن إحدى الحالات التالية هن المؤهلات للخضوع لتحريض\r\n                الإباضة:</p>\r\n            <p>– النساء اللواتي لديهن إباضة أقل من اللازم.</p>\r\n            <p>– النساء اللواتي ليست لديهن إباضة أبداً.</p>\r\n            <p>– النساء اللواتي لديهن مشاكل عقم غير معروفة السبب رغم أن\r\n                إباضتهن منتظمة.</p>\r\n            <p>– النساء اللواتي يخضعن لعملية أطفال الأنابيب من أجل زيادة\r\n                إنتاجهن للبويضات.</p>\r\n            <p>بإمكان هؤلاء النساء الاستفادة من تحريض الإباضة من أجل زيادة عدد مرات الإباضة\r\n                لديهن خلال دورة واحدة مما يمنحهن فرصاً أفضل للإلقاح والحمل.</p>\r\n            <h2><span style=\"color: #000000;\">طرق تحريض الاباضة</span></h2>\r\n            <p>هناك عدة طرق لتحريض الإباضة، وتحديد أيها سيستخدم يتعلق باستجابة المبايض لكل\r\n                طريقة، هذه الطرق هي التالية:</p>\r\n            <p>– تحريض الاباضة باستخدام أحد الأنظمة الدوائية والتي\r\n                سنشرحها أدناه.</p>\r\n            <p>– تثقيب المبيض</p>\r\n            <p>– الميتفورمين (والذي يوصف بشكل خاص من أجل النساء المصابات\r\n                بمتلازمة تكيس المبايض (PCOS)).</p>\r\n            <h3><span style=\"color: #000000;\">تحريض الإباضة باستخدام الأدوية</span></h3>\r\n            <p>عادةً ما يتم تحريض الإباضة باستخدام أحد الأنظمة الدوائية التالية:</p>\r\n            <h4><span style=\"color: #000000;\">أقراص كلوميفين سيترات أو كلوميد</span></h4>\r\n            <p><strong>كيف يعمل كلوميفين سيترات؟</strong></p>\r\n            <p><img src=\"https://ariamedtour.com/ar/wp-content/uploads/2018/10/Ovulation-Induction.jpg\"></p>\r\n            <p>يقوم كلوميد – المعروف أيضاً باسم سيروفين أو أحد بدائله (أقراص تاموكسيفين\r\n                وليتروزول) – بزيادة إنتاج هرمون تحفيز الجريبات (FSH) وهرمون الملوتين (LH) في الغدة النخامية، حيث يعمل\r\n                كلوميفين على خداع الجسم ليظن بأنه ينقصه الإيستروجين، و بعد أن تتلقى الغدة النخامية نبضات من المراكز\r\n                الأعلى في الدماغ فإنها ترسل إشارات إلى المبيض لتحثه على تطوير الجريبات وإنضاج البويضات. سوف تحدث زيادة\r\n                مفاجئة في في هرمون LH بعد عدة أيام من التوقف عن تناول كلومينفين سيترات، وبعد هذه الزيادة المفاجئة بـ 36\r\n                ساعة يبدأ حدوث الإباضة لدى المريضة.</p>\r\n            <p>عادةً ما تعطى هذه الأقراص بجرعات ابتدائية 50 ميليغرام لمدة 5 أيام ابتداءً من\r\n                اليوم الثاني من الدورة الشهرية، رغم أن إدارة الغذاء والدواء في الولايات المتحدة (FDA) قد أجازت تناول 125\r\n                ميليغرام يومياً إلا أنه لن تتم زيادة الجرعة إلا إذا لم تستجب المريضة إلى جرعة 50 ميليغرام ولم تحدث\r\n                الإباضة لديها، وعندها تتم زيادة الجرعة إلى 100 ميليغرام يومياً. إذا كانت الدورة الشهرية غير منتظمة بشدة\r\n                ولا تحدث إلا نادراً فقد تكون هناك حاجة لنظام دوائي آخر من أجل تحريض الدورة الشهرية، وهذه الأقراص تدعى\r\n                باسم نيروثيستيرون.</p>\r\n            <p><strong>ما مدى فعالية كلوميفين سيترات؟</strong></p>\r\n            <p>تعتمد فعالية كلوميد على عدد من الأسباب مثل العمر ومشاكل العقم وخصائص السائل\r\n                المنوي.</p>\r\n            <p>إذا حدث حمل بعد تناول كلوميفين سيترات فإن احتمال حدوث حمل بتوأمين هو حوالي\r\n                6-10% واحتمال حدوث حمل بثلاثة توائم أو أكثر هو 1% أو أقل.</p>\r\n            <p><strong>الآثار الجانبية لكلوميفين سيترات</strong></p>\r\n            <p>لا يترافق كلوميفين سيترات عادةً بأية آثار جانبية خطيرة أو متوسطة الخطورة لكنه\r\n                قد يترافق بغباش في الرؤية وتقلبات في المزاج.</p>\r\n            <h4><span style=\"color: #000000;\">غونادوتروبينس أو غونادوتروفينس</span></h4>\r\n            <p><strong>كيف يعمل غونادوتروبينس؟</strong></p>\r\n            <p>يشكل هذا العلاج طريقة لتحريض المبيض عن طريق الحقن، حيث يتم الحقن يومياً\r\n                باستخدام إبرة صغيرة، ويجب أن يستمر هذا العلاج بين 5 أيام و12 يوماً. تحتلف الجرعة الأولية من مريضة إلى\r\n                أخرى من أجل الحصول على أفضل فرصة للحمل وتقليل فرص الحمل بتوائم متعددة، ويتم تحديد الجرعة المناسبة عن\r\n                طريق مراقبة المريضة بالتصوير فوق الصوتي وتقييم مستويات الهرمونات. تعمل هذه الحقن على إنضاج البويضات داخل\r\n                الجريب، وبعد ذلك تحدث الإباضة بعد استخدام حقنة HCG التي تحاكي فيزيولوجية الزيادة المفاجئة لهرمون LH في\r\n                منتصف الدورة الشهرية.</p>\r\n            <div><img\r\n                src=\"https://ariamedtour.com/ar/wp-content/uploads/2018/10/ovulation-induction-by-injection.jpg\">\r\n                <p>حقنة غونادوتروبينس هي طريقة لتحريض الإباضة تمتد\r\n                    من 5 أيام حتى 12 يوماً.</p></div>\r\n            <p>غونادوتروبينس معروف بالأسماء الدوائية التالية:</p>\r\n            <p>– غونال إف</p>\r\n            <p>– مينوبور</p>\r\n            <p>– برافيل</p>\r\n            <p>– فوليستيم</p>\r\n            <p>إذا حدث حمل بطريقة تحريض الإباضة هذه فإن احتمال حدوث حمل بتوأمين هو حوالي 15%\r\n                واحتمال حدوث حمل بثلاثة توائم هو حوالي 5% واحتمال حدوث حمل بأكثر من ذلك أقل من 1%.</p>\r\n            <h4><span style=\"color: #000000;\">هرمون الحمل (HCG)</span></h4>\r\n            <p>يستخدم هرمون الحمل (HCG) – المعروف أيضاً باسم نوفاريل أو بروفاسي أو أوفيدريل –\r\n                كطريقة لتحريض الإباضة عن طريق الحقن عندما لا تكون هناك مقادير كافية من الجريبات الناضجة، فباستخدام\r\n                التصوير بالأمواج فوق الصوتية يكون من السهل متابعة مقدار استجابة المريضة للأدوية، وبعد ذلك يمكن معرفة متى\r\n                نضجت الجريبات إلى حجمها الملائم ومتى ينصح بالعلاقة الجنسية ومتى قد تظهر الحاجة لحقنة HCG للمساعدة في\r\n                تحديد موعد العلاقة الجنسية أو <a\r\n                    href=\"https://ariamedtour.com/ar/procedures/intrauterine-insemination-iui/\" target=\"_blank\"\r\n                    rel=\"noopener\">التلقيح داخل الرحم</a> (عملية نقل السائل المنوي إلى داخل الرحم مباشرةً). تبدي كل\r\n                مريضة استجابةً مختلفة لإجراء تحريض الإباضة، وقد تكون الاستجابة إما أقوى من اللازم أو غير كافية، وفي مثل\r\n                هذه الحالات قد يكون من اللازم إيقاف دورة العلاج والبدء بدورة جديدة، وإذا ظهر أن الاستجابة مقبولة فيمكن\r\n                متابعة العلاج لـ 6 دورات علاجية أخرى دون توقف.</p>\r\n            <h4><span style=\"color: #000000;\">ليتروزول</span></h4>\r\n            <p>ليتروزول – المعروف أيضاً باسم فيمارا – هو طريقة تحريض إباضة عن طريق الأقراص،\r\n                ورغم أنه لم تتم المصادقة على هذه الطريقة من قبل إدارة الدواء والغذاء في أمريكا (FDA) إلا أنه يمكن\r\n                استخدامها كبديل لكلوميد (كلوميفين سيترات) بما أنها تعطي نفس نتائج كلوميد، فإذا كانت المريضة تعاني من\r\n                آثار جانبية لكلوميد فيمكنها تناول ليتروزول بدلاً منه. جرعة البداية هي 2.5 إلى 5 ميليغرام، وإن لم تحدث\r\n                الإباضة تتم زيادة الجرعة بمقدار 2.5 ميليغرام، معظم الأطباء لن ينصحوا بزيادة الجرعة إلى أكثر من 7.5\r\n                ميليغرام.</p>\r\n            <h4><span\r\n                style=\"color: #000000;\">شبيهات هرمونات تحرير المحرضات التناسلية (GnRH)</span></h4>\r\n            <p>شبيهات هرمونات تحرير المحرضات التناسلية (GnRH) – المعروفة أيضاً باسم لوبرون أو\r\n                لوبروليد أسيتات أو غانيليريكس أو أنتاغون أو سيتروتيد – شبيهة بهرمونات تحرير المحرضات التناسلية (GnRH)،\r\n                حيث يتم تحرير هرمونات GnRH من منطقة تحت المهاد في الدماغ من أجل التحكم بالغدة النخامية، فهرمونات FSH وLH\r\n                الضرورية لإنتاج البويضات وبالتالي لحدوث الإباضة يتم إفرازها من خلال تحريض الغدة النخامية والذي ينتج\r\n                أيضاً عن تحرير متذبذب لهرمون تحرير المحرضات التناسلية (GnRH)، ويحدث العكس مع التحريرالاصطناعي لشبيهات\r\n                هرمونات تحرير المحرضات التناسلية (GnRH)، حيث يؤدي لوبرون إلى كبح إفراز FSH وLH بعد أن تتم زيادة افرازهما\r\n                في البداية، وقد يؤدي أنتاغون وسيتروتيد إلى كبح فوري لإفرازها، وتناول شبيهات هرمونات تحرير المحرضات\r\n                التناسلية (GnRH) بالتزامن مع العلاج باستخدام غونادوتروفين يسمح بالحصول على سيطرة أفضل على الهرمونات\r\n                ويضمن نتائج أكثر نجاحاً مع عدد أقل من دورات العلاج الفاشلة.</p>\r\n            <h3><span style=\"color: #000000;\">خيارات تحريض إباضة أخرى وخاصةً من أجل النساء المصابات بمتلازمة تكيس المبايض</span>\r\n            </h3>\r\n            <p>النساء المصابات بمتلازمة تكيس المبايض (PCOS) واللواتي لا تحصل لديهن إباضة\r\n                أبداً أو لا تكون إباضتهن منتظمة يمكن معالجتهن في البداية بكلوميد الذي يؤدي إلى استجابة جيدة في معظم\r\n                الحالات، لكن هناك خيارات أخرى لأخذها بعين الاعتبار:</p>\r\n            <h4><span style=\"color: #000000;\">ميتفورمين</span></h4>\r\n            <p>من المعروف أن متلازمة تكيس المبايض (PCOS) تؤثر على استقلاب الإنسولين\r\n                والغلوكوز، والميتفورين – الذي هو دواء يستخدم في علاج الداء السكري – يقوم من جهة أحرى بتحسين الإباضة لدى\r\n                بعض المريضات المصابات بمتلازمة تكيس المبايض.</p>\r\n            <h4><span style=\"color: #000000;\">تثقيب المبيض</span></h4>\r\n            <p>تثقيب المبيض هو عملية جراحية من أجل تحريض الإباضة، وفي هذه الطريقة يتم فتح\r\n                حوالي أربعة ثقوب بطول 4 ميليمترات في المبيض. تحتاج هذه الطريقة إلى عملية تنظيرية وتساعد النساء المصابات\r\n                بمتلازمة تكيس المبايض (PCOS) في الإباضة في 60% إلى 85% من الحالات، نادراً ما تحدث ندبات في هذه العملية\r\n                لكنها تحمل مخاطر الجراحة التنظيرية والتي هي قليلة الأثر غالباً.</p>\r\n         <img\r\n                src=\"https://ariamedtour.com/ar/wp-content/uploads/2018/10/ovarian-drilling.jpg\"\r\n                alt=\"تحريض الإباضة عن طريق تثقيب المبيض\" >\r\n                <p id=\"caption-attachment-9984\" class=\"wp-caption-text\">تثقيب المبيض هي طريقة جراحية لتحريض الإباضة\r\n                    مفيدة للنساء المصابات بمتلازمة تكيس المبايض (PCOS).</p></div>\r\n            <h2><span style=\"color: #000000;\">تحريض الاباضة في ايران</span></h2>\r\n            <p>يتم إجراء كافة طرق تحريض الاباضة في ايران من قبل متخصصين ذوي خبرة عالية،\r\n                وعادةً ما يصف الأطباء كلوميفين سيترات على أنه الخيار الأول لمساعدة النساء المصابات بمتلازمة تكيس المبايض\r\n                على الإباضة، أما من أجل المريضات اللواتي تخططن للحمل فقد تكون هناك حاجة لإجراء طرق أخرى، ومن حيث تقدم\r\n                العلاج فإن خدمات <a href=\"https://ariamedtour.com/ar/procedures/fertility/\" target=\"_blank\"\r\n                                    rel=\"noopener\">علاج العقم في إيران</a>&nbsp;تواكب الدول المتقدمة في هذا المجال.</p>\r\n            <h2><span style=\"color: #000000;\">كلفة تحريض الاباضة في ايران</span></h2>\r\n            <p>إن كلفة تحريض الاباضة في ايران بمختلف أنواعها أقل منها في الدول الأخرى وخاصةً\r\n                الدول المتقدمة منها، ولمقارنة تكلفة تحريض الاباضة في ايران مع البلدان الأخرى سنأخذ تكلفة حقنة HCG كمثال،\r\n                فدورة علاج بحقن HCG تكلف حوالي ….. في إيران بينما الكلفة الوسطية لدورة علاج بحقن HCG في الولايات المتحدة\r\n                الأمريكية هي 400$ تقريباً.</p>\r\n        </div>\r\n', 4, '', 'adult', NULL, NULL, '/images/ovulation-induction/image-01.jpg', '{}', '2019-10-31 15:12:15', '2019-11-19 14:25:13'),
(15, 'treatment', 'تكبير المؤخرة', 'butt-lift', 'يعرض هذا الفيلم الوثائقي كيفية الخدمات الطبية النموذجية التي نقدمها للمرضى الذين يزورونا من خارج ايران.', '<p>يعرض هذا الفيلم الوثائقي كيفية الخدمات الطبية النموذجية التي نقدمها للمرضى الذين يزورونا من خارج ايران.</p>', 0, 'voyager-logbook', 'adult', NULL, NULL, '', '{}', '2019-11-11 23:23:45', '2019-11-19 14:25:15');

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'sfsdf@sdfs.com', '2019-11-17 05:40:21', '2019-11-17 05:40:21'),
(2, 'sfsdf@sdfs.com', '2019-11-17 05:41:20', '2019-11-17 05:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `treatments`
--

CREATE TABLE `treatments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ;

--
-- Dumping data for table `treatments`
--

INSERT INTO `treatments` (`id`, `name`, `alias`, `parent`, `excerpt`, `description`, `featured_image`, `gallery`, `featured`, `created_at`, `updated_at`) VALUES
(1, 'الجراحة التجمیلیة', 'plastic-surgery', 0, 'إن التكلفة المعقولة والاقتصادية هي واحدة من أهم الأسباب التي تدفع الناس لاختيار ايران من أجل إجراء عمليات التجميل فيها', '<div  itemprop=\"text\"><p><span>تكلفة عمليات التجميل في ايران</span></p>\r\n<p >إن التكلفة المعقولة والاقتصادية هي واحدة من أهم الأسباب التي تدفع الناس لاختيار ايران من أجل إجراء عمليات التجميل فيها، والتكلفة المنخفضة للجراحة التجميلية في ايران لا تعني إطلاقاً أن الجودة أو الأمان منخفضين فيها بل له أسباب اقتصادية بحتة. ليست تكلفة عمليات التجميل في ايران منخفضة فحسب، بل إن اسعار الخدمات الأخرى التي ستحتاجها منخفضة أيضاً مما يجعل السفر إلى ايران مسألة اقتصادية تجعلك توفر الكثير من المال.</p>\r\n</div>', '/images/treatments/plastic-surgery', '{}', 0, NULL, NULL),
(2, 'طب العيون', 'eye-care', 0, 'هدفنا هو مساعدتك في استعادة بصرك', '<div  \" itemprop=\"text\"><p >”أغمض عينَيَّ فيموت العالَم بأسره من حولي، أفتح جفنَيَّ فيولد العالم ثانيةً“، يبدو أن هذا الاقتباس من الشاعرة الأمريكية سلفيا بلاث هو أفضل ما يصف دور العين في حياتنا (رغم أنها لم تكن تقصد أن توصل هذه الفكرة في شعرها)، إذ يجب أخذ احتمال فقدان الرؤية على محمل الجد وينبغي علاج أمراض العيون أبكر ما يمكن. إننا نقدم لك أكثر علاجات العيون فعاليةً واقتصاديةً في ايران في أفضل المستشفيات وعيادات العيون التخصصية ونرتب لك كل ما تحتاج أيضاً للحصول على رحلة علاجية ميسرة ومريحة وخالية من المشقات.</p>\r\n\r\n<p >العین هي العضو المسؤول عن الرؤية. كل ما يحصل في هذا العالم وفي المحيط نراه من خلال هذا العضو الصغیر و المهم. و أي خلل صغیر يصيب هذا العضو الصغير يمكن أن نشعر به بسهولة. العین يمکن أن تصاب بحوادث و أمراض کثیرة: امراض عفونیة ، ماء اسود ، ماء ابیض ، و … . ومن الممكن أن يلجأ متخصصي طب العيون إلى العمل الجراحي لعلاج العين.<br>\r\nأولئك الذين يبحثون عن علاج لأمراض العين من خلال التكنولوجيا المتقدمة وفي مراكز طبية منخفضة التكلفة ولا یریدون أن یبقوا فی قوائم انتظار طويلة من المراجعين من أجل العلاج فالمراكز المتخصصة في إيران هي الخيار الصحيح بالنسبة لهم.</p>\r\n<p >إيران لدیها أخصائيين خبيرين في طب العيون كما أن مراكز طب العيون في ايران مجهزة بمجموعة متنوعة من المعدات المتطورة. وقد سجل طب العيون في ايران العديد من المكاسب الاستثنائية وأجريت عمليات جراحية و علاجية على درجات عالية من النجاح.</p>\r\n</div>', '/images/treatments/eye-care/image-01.jpg', '{}', 0, NULL, NULL),
(3, 'علاج العقم', 'fertility', 0, 'الأطفال هبة من الله، لكن قد يتطلب الأمر أحياناً خوض\r\nمغامرة للحصول على هذه الهبة. نحن هنا لمساعدتك\r\nفي جعل هذه المغامرة ذكرى طيبة مع علاج العقم في ايران', '<div itemprop=\"text\">\r\n<h1>علاج العقم في ايران: كل ما تحتاج معرفته</h1>\r\n<p>ايران هو البلد الأبرز في الشرق الأوسط في مجال علاج اصعب حالات العقم وأحد البلدان الأكثر تطوراً في العالم. بفضل مصادقة قادة البلد المتدينين على التقنيات المساعدة على التوالد وبفضل السياسات الاجتماعية والسكانية في العقود الأخيرة فقد حققت ايران تقدماً عظيماً في حلول علاج العقم.</p>\r\n<p>في الماضي كان يتوجب على الأزواج الإيرانيين الذين يعانون من حالات العقم السفر إلى الخارج كي يتلقوا العلاج، لكن اليوم أصبحت ايران وجهة هامةً للرجال والنساء الذين يعانون من عدم الإنجاب من البلدان الأخرى، حيث تشكل التكاليف المعقولة لإجراءات علاج العقم في ايران مقارنة بالأسعار الباهظة في بعض البلدان الأخرى إضافةً إلى النوعية الجيدة لمثل هذه الخدمات في البلد هي الأسباب الرئيسية لشعبية معالجات العقم في ايران.</p>\r\n\r\n<p >تنعم ايران حالياً بأكثر من 70 مركزاً متخصصاً يقدم خدمات متعددة للأزواج الذين لا يستطيعون إنجاب طفل لوحدهم وتشمل تشخيص عدم الخصوبة واستشارة خبراء الجينات ومعالجات مختلفة مثل التخصيب خارج الرحم (طفل الأنبوب) IVF على سبيل المثال. ومع التقدم الملفت في أطفال الأنابيب منذ ولادة الطفل الأول في البلد عام 1988عبر هذه التقنية كانت ايران تستقطب الأزواج من كل أنحاء الشرق الأوسط وحتى من بلدان بعيدة مثل استراليا وإندونيسيا.</p>\r\n<h2>لماذا تعتبر ايران ناجحة جداً في علاج العقم؟</h2>\r\n<p>تم تبني التقنيات المساعدة لعلاج العقم عند الرجال والنساء من قبل السلطات الدينية الشيعية في ايران بشكل أكثر انفتاحاً من البلدان السنية الأخرى التي ما تزال بعض أشكال معالجات العقم عبر شخص ثالث – مثل التبرع بالنطاف والبويضات – لا تزال مستهجنة فيها.</p>\r\n\r\n<p >بينما تبنى القادة الدينيون السنة في البلدان الإسلامية الأخرى العمليات التي لا تشمل جهة ثالثة – مثل التبرع بالنطاف والبويضات والأجنة – فقد قدم قائد ايران والمرجع الشيعي (السلطة الدينية) علي خامنئي فتوى تشرع مثل هذه العمليات في ظروف معينة، وهذا ما يفسر سبب توجه العديد من الأزواج من البلدان السنية إلى ايران بشكل متزايد كي يخضعوا لعمليات العقم (<a href=\"#\">اقرأ المزيد</a> عن أطفال الأنابيب والتبرع بالمشيج في الإسلام السني مقابل الإسلام الشيعي.)</p>\r\n\r\n<p >عيادات علاج العقم في ايران مجهزة حالياً بأحدث التقنيات وباختصاصيي خصوبة ذوي خبرة عالية يقدمون الخدمات للأزواج العقيمين من مختلف البلدان. وحسب <a href=\"h\">مقالة</a> بعنوان ”الجمهورية الإسلامية لصناعة الأطفال“ منشورة في مجلة فورين بوليسي يعتقد البروفيسور في جامعة أكسفورد سورايا تريمايين ومؤسس مجموعة دراسات التكاثر والخصوبة FRSG أن ”ايران تندفع نحو الأمام مستخدمة (هذه التقنيات) بكل أشكالها وتصل إلى أماكن لا تستطيع  البلدان السنية في المنطقة أن تلحقها إليها.“</p>\r\n\r\n<p >يقول الدكتور أحمد فسوق المسؤول في معهد رويان وهو معهد بحثي وتعليمي مرموق متخصص بأبحاث الخلايا الجذعية ومعالجة العقم والأبحاث الطبية الحيوية والتحويلية والسريرية: ”يتم حالياً انجاز عمل بارز في مجال العقم في معهد رويان بحيث تستخدم أدنى فرصة لخصوبة الأزواج من أجل التلقيح.“ ويعلن أنه يتم استخدام التقنيات المتقدمة لإنضاج البويضات عند المرأة واستخراج نطاف الخصية عند الرجال لعلاج العقم عند النساء والرجال على التوالي.</p>\r\n\r\n<p >أحد العوامل المساهمة في التقدم الحقيقي في علاج العقم في ايران هو انتشار ظاهرة العقم بين الأزواج الايرانيين، حيث يعاني 20.2% من الأزواج الايرانيين من العقم حسب إحصاء وطني شامل، مما يعني أن واحداً من كل خمسة أزواج غير قادر على إنجاب طفل لوحدهم. بالنظر إلى أن البلد قد عكس سياسة الضبط السكاني فإن الحكومة تشجع الآن السكان على إنجاب المزيد من الأطفال وذلك بتقديمها حوافز للأزواج العقيمين لإنجاب أطفال بما في ذلك دورة مجانية لطفل الأنبوب توافقاً مع هذه السياسة.</p>\r\n<h2>تكلفة علاج العقم في ايران</h2>\r\n<p >تقدم ايران علاج العقم الأرخص في الشرق الأوسط، فمثلاً تكلف دورة علاج أطفال الانابيب حوالي 3,500$ وهي أقل بكثير من العديد من البلدان الأخرى. ونظراً لأن العديد من معالجات العقم تتطلب بقاء الزوجين في البلد لعدة أسابيع فإن تكلفة الإقامة والنفقات الأخرى المتكبدة خلال إقامتهم تصبح هامة جداً.</p>\r\n\r\n<p >بما أن ايران بلد رخيص للمسافرين مع تكاليف إقامة معقولة جداً فإنه لن يتوجب على مرشحي علاج العقم أن يصرفوا الكثير من المال على معالجتهم في ايران، لذلك لا تتردد في الاتصال بنا كي تحصل على عرض سعر مجاني عن علاج العقم في ايران.</p>\r\n<h2>عيادات علاج العقم في ايران</h2>\r\n<p >يعمل في ايران أكثر من 70 مركزاً صحياً وعيادة للخصوبة مرخصاً رسمياً من وزارة الصحة. ومراكز علاج العقم في ايران إما أن تكون مندمجة مع مستشفيات أو تابعة لمراكز أبحاث أخرى. ويتم تجهيز مراكز علاج العقم في طهران ومشهد ويزد واصفهان وشيراز وتبريز ومدن أخرى في ايران لتقدم الخدمات إلى الأزواج من كل أنحاء العالم وتخلق التجربة السارة في إنجاب طفل لهم.</p>\r\n\r\n<p>علاجات العقم المقدمة في مراكز علاج العقم في ايران تشمل: التخصيب خارج الرحم  IVFو التخصيب داخل الرحم IUI وحقن الحيوانات المنوية في البويضةICSI  و تقنية حقن حيوانات منوية مختارة في البويضة IMSI وإنضاج البويضات في المختبر IVM واستخراج الحيوانات المنوية المجهري TESE  وتحريض الإباضة والفحص الجيني قبل الزرع PGS والتشخيص الوراثي قبل الزرع PGD والتبرع بالبويضات والتبرع بالنطاف والتبرع بالأجنة والأم الحاضنة وعلاج متلازمة المبيض المتعدد الكيسات PCOS وغيرها.</p>\r\n\r\n<p >نحن في آريا مدتور لكوننا الشركة الرائدة في تسهيل السياحة الطبية نساعدك على ترتيب علاج الخصوبة في أحد أفضل مراكز علاج العقم في ايران، ولكي تعرف أكثر عن خدمات كل عيادة ورسومها وأطبائها اتصل بنا على واتس آب أو البريد الإلكتروني (الموجود في آخر الصفحة) أو عبر استمارة الاتصال (في أعلى الصفحة أو في أسفلها).</p>\r\n\r\n<br><br>\r\n </div>', '/images/treatments/fertility/image-01.jpg', '{}', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'محسن', 'ma843@yahoo.com', NULL, '$2y$10$foB2uNKPrVaykKZR35/oUexCnk4nwJR65NAJk2cTnBTq88MZPq7Z.', 'J6VvavZaGTuDPSEK7lTrkGaaY1pfoiJ62mhb19x6g1b4RKzbFN2wswM5815R', '2019-10-28 17:52:34', '2019-10-28 17:52:34'),
(2, 'mohsen', 'admin@material.com', '2019-11-04 18:41:43', '$2y$10$foB2uNKPrVaykKZR35/oUexCnk4nwJR65NAJk2cTnBTq88MZPq7Z.', 'syh8dJciTgPAAeaemBb2mwGCwfrrm31NK2MKzDY1U5OjN7mbhpIpttPsX8JQ', '2019-11-04 18:41:43', '2019-11-22 07:48:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_procedure`
--
ALTER TABLE `blog_procedure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `city_code_2` (`city_code`) USING HASH,
  ADD UNIQUE KEY `id` (`id`,`city_code`) USING HASH,
  ADD KEY `city_code` (`city_code`(768)),
  ADD KEY `city_code_3` (`city_code`(768)),
  ADD KEY `city_code_4` (`city_code`(768));

--
-- Indexes for table `clinics`
--
ALTER TABLE `clinics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clinic_procedure`
--
ALTER TABLE `clinic_procedure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_procedure`
--
ALTER TABLE `doctor_procedure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilitators`
--
ALTER TABLE `facilitators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_procedure`
--
ALTER TABLE `blog_procedure`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clinics`
--
ALTER TABLE `clinics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clinic_procedure`
--
ALTER TABLE `clinic_procedure`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `credits`
--
ALTER TABLE `credits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doctor_procedure`
--
ALTER TABLE `doctor_procedure`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `facilitators`
--
ALTER TABLE `facilitators`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `procedures`
--
ALTER TABLE `procedures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `treatments`
--
ALTER TABLE `treatments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
