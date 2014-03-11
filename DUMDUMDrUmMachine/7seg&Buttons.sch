<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="display-hp">
<description>&lt;b&gt;Hewlett Packard LED Displays&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="HDSP-I">
<description>&lt;b&gt;LED DISPLAY&lt;/b&gt;&lt;p&gt;
 12-mm 1 character 7 segment, 2 decimal points</description>
<wire x1="6.35" y1="-9.525" x2="-6.35" y2="-9.525" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-6.604" x2="5.334" y2="-6.604" width="0.3048" layer="51"/>
<wire x1="6.35" y1="9.398" x2="6.35" y2="-9.525" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-9.525" x2="-6.35" y2="9.398" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="9.398" x2="6.35" y2="9.398" width="0.1524" layer="21"/>
<wire x1="4.445" y1="4.826" x2="3.6322" y2="0.2032" width="0.1524" layer="51"/>
<wire x1="2.667" y1="-4.826" x2="1.651" y2="-4.826" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-4.826" x2="2.5146" y2="-0.2032" width="0.1524" layer="51"/>
<wire x1="3.429" y1="4.826" x2="4.445" y2="4.826" width="0.1524" layer="51"/>
<wire x1="3.1242" y1="5.588" x2="2.921" y2="4.572" width="0.1524" layer="51"/>
<wire x1="2.921" y1="4.572" x2="-1.143" y2="4.572" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="4.572" x2="-0.9652" y2="5.588" width="0.1524" layer="51"/>
<wire x1="-0.9652" y1="5.588" x2="3.1242" y2="5.588" width="0.1524" layer="51"/>
<wire x1="-4.3942" y1="-4.8768" x2="-3.556" y2="-0.2286" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="4.8514" x2="-1.5494" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="-3.3274" y1="-4.8768" x2="-2.4892" y2="-0.2286" width="0.1524" layer="51"/>
<wire x1="-3.3274" y1="-4.8768" x2="-4.3942" y2="-4.8768" width="0.1524" layer="51"/>
<wire x1="1.2446" y1="-4.5974" x2="-2.8194" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="1.2446" y1="-4.5974" x2="1.0668" y2="-5.6134" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="-5.6134" x2="-2.8194" y2="-4.5974" width="0.1524" layer="51"/>
<wire x1="1.0668" y1="-5.6134" x2="-2.9972" y2="-5.6134" width="0.1524" layer="51"/>
<wire x1="1.9812" y1="-0.508" x2="-2.0828" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="2.1844" y1="0.508" x2="1.9812" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-1.8796" y1="0.508" x2="-2.0828" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="2.1844" y1="0.508" x2="-1.8796" y2="0.508" width="0.1524" layer="51"/>
<wire x1="2.5146" y1="-0.2032" x2="3.556" y2="-0.2032" width="0.1524" layer="51"/>
<wire x1="2.5908" y1="0.2032" x2="3.6322" y2="0.2032" width="0.1524" layer="51"/>
<wire x1="2.5908" y1="0.2032" x2="3.429" y2="4.826" width="0.1524" layer="51"/>
<wire x1="3.556" y1="-0.2032" x2="2.667" y2="-4.826" width="0.1524" layer="51"/>
<wire x1="-3.4798" y1="0.2286" x2="-2.3876" y2="0.2286" width="0.1524" layer="51"/>
<wire x1="-3.556" y1="-0.2286" x2="-2.4892" y2="-0.2286" width="0.1524" layer="51"/>
<wire x1="-3.4798" y1="0.2286" x2="-2.6162" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="-2.3876" y1="0.2286" x2="-1.5494" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="1.5748" y1="0" x2="-1.4224" y2="0" width="1.016" layer="51"/>
<wire x1="2.9464" y1="-0.7112" x2="2.2352" y2="-4.3434" width="1.016" layer="51"/>
<wire x1="0.635" y1="-5.1054" x2="-2.3876" y2="-5.1054" width="1.016" layer="51"/>
<wire x1="-3.7846" y1="-4.3688" x2="-3.1242" y2="-0.7366" width="1.016" layer="51"/>
<wire x1="-2.8448" y1="0.7112" x2="-2.1844" y2="4.3688" width="1.016" layer="51"/>
<wire x1="-0.5334" y1="5.08" x2="2.4892" y2="5.08" width="1.016" layer="51"/>
<wire x1="3.8608" y1="4.2926" x2="3.2004" y2="0.6858" width="1.016" layer="51"/>
<wire x1="1.5494" y1="0.381" x2="2.032" y2="0.381" width="0.254" layer="51"/>
<wire x1="2.032" y1="0.381" x2="1.8542" y2="-0.4064" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="0.381" x2="-1.9304" y2="-0.4064" width="0.254" layer="51"/>
<wire x1="-1.9304" y1="-0.4064" x2="-1.7018" y2="-0.4064" width="0.254" layer="51"/>
<wire x1="2.6162" y1="-0.3302" x2="3.429" y2="-0.3302" width="0.254" layer="51"/>
<wire x1="3.429" y1="-0.3302" x2="3.3528" y2="-0.5842" width="0.254" layer="51"/>
<wire x1="3.556" y1="0.3302" x2="2.7178" y2="0.3302" width="0.254" layer="51"/>
<wire x1="2.7178" y1="0.3302" x2="2.794" y2="0.635" width="0.254" layer="51"/>
<wire x1="-2.4638" y1="0.3302" x2="-3.3528" y2="0.3302" width="0.254" layer="51"/>
<wire x1="-3.3528" y1="0.3302" x2="-3.302" y2="0.5334" width="0.254" layer="51"/>
<wire x1="-2.6416" y1="-0.3556" x2="-2.667" y2="-0.635" width="0.254" layer="51"/>
<wire x1="-3.4544" y1="-0.3556" x2="-2.6416" y2="-0.3556" width="0.254" layer="51"/>
<wire x1="-2.5146" y1="4.7244" x2="-1.6764" y2="4.7244" width="0.254" layer="51"/>
<wire x1="-1.6764" y1="4.7244" x2="-1.7272" y2="4.4958" width="0.254" layer="51"/>
<wire x1="-0.8382" y1="5.4864" x2="-0.9906" y2="4.6736" width="0.254" layer="51"/>
<wire x1="-0.9906" y1="4.6736" x2="-0.7874" y2="4.6736" width="0.254" layer="51"/>
<wire x1="2.5908" y1="4.699" x2="2.8194" y2="4.699" width="0.1524" layer="51"/>
<wire x1="2.8194" y1="4.699" x2="2.9718" y2="5.4864" width="0.254" layer="51"/>
<wire x1="2.9718" y1="5.4864" x2="2.667" y2="5.4864" width="0.254" layer="51"/>
<wire x1="3.5052" y1="4.6736" x2="4.318" y2="4.6736" width="0.254" layer="51"/>
<wire x1="4.318" y1="4.6736" x2="4.2672" y2="4.4958" width="0.254" layer="51"/>
<wire x1="2.5908" y1="-4.699" x2="1.7526" y2="-4.699" width="0.254" layer="51"/>
<wire x1="1.7526" y1="-4.699" x2="1.8034" y2="-4.5466" width="0.254" layer="51"/>
<wire x1="0.9652" y1="-5.5118" x2="1.0922" y2="-4.699" width="0.254" layer="51"/>
<wire x1="1.0922" y1="-4.699" x2="0.7874" y2="-4.699" width="0.254" layer="51"/>
<wire x1="-2.7178" y1="-4.699" x2="-2.8448" y2="-5.5118" width="0.254" layer="51"/>
<wire x1="-2.8448" y1="-5.5118" x2="-2.6162" y2="-5.5118" width="0.254" layer="51"/>
<wire x1="-3.3782" y1="-4.5212" x2="-3.429" y2="-4.7498" width="0.254" layer="51"/>
<wire x1="-3.429" y1="-4.7498" x2="-4.2418" y2="-4.7498" width="0.254" layer="51"/>
<wire x1="-4.2418" y1="-4.7498" x2="-4.191" y2="-4.5466" width="0.254" layer="51"/>
<wire x1="-5.207" y1="-6.731" x2="-4.953" y2="-6.731" width="0.3048" layer="51"/>
<circle x="5.207" y="-6.604" radius="0.254" width="0.6096" layer="51"/>
<circle x="-5.207" y="-6.731" radius="0.254" width="0.6096" layer="51"/>
<pad name="1" x="-3.81" y="7.62" drill="0.8128" shape="long"/>
<pad name="2" x="-3.81" y="5.08" drill="0.8128" shape="long"/>
<pad name="3" x="-3.81" y="2.54" drill="0.8128" shape="long"/>
<pad name="6" x="-3.81" y="-5.08" drill="0.8128" shape="long"/>
<pad name="7" x="-3.81" y="-7.62" drill="0.8128" shape="long"/>
<pad name="8" x="3.81" y="-7.62" drill="0.8128" shape="long"/>
<pad name="9" x="3.81" y="-5.08" drill="0.8128" shape="long"/>
<pad name="10" x="3.81" y="-2.54" drill="0.8128" shape="long"/>
<pad name="11" x="3.81" y="0" drill="0.8128" shape="long"/>
<pad name="13" x="3.81" y="5.08" drill="0.8128" shape="long"/>
<pad name="14" x="3.81" y="7.62" drill="0.8128" shape="long"/>
<text x="-6.223" y="9.9822" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.223" y="-11.3538" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="HD7L-A">
<wire x1="2.3368" y1="3.1242" x2="2.032" y2="2.8194" width="0.254" layer="94"/>
<wire x1="2.032" y1="2.8194" x2="1.6256" y2="0.6096" width="0.254" layer="94"/>
<wire x1="1.6256" y1="0.6096" x2="1.905" y2="0.3302" width="0.254" layer="94"/>
<wire x1="1.905" y1="0.3302" x2="2.159" y2="0.5842" width="0.254" layer="94"/>
<wire x1="2.159" y1="0.5842" x2="2.54" y2="2.921" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.921" x2="2.3368" y2="3.1242" width="0.254" layer="94"/>
<wire x1="2.032" y1="3.429" x2="1.778" y2="3.175" width="0.254" layer="94"/>
<wire x1="1.778" y1="3.175" x2="-0.762" y2="3.175" width="0.254" layer="94"/>
<wire x1="-0.762" y1="3.175" x2="-1.016" y2="3.429" width="0.254" layer="94"/>
<wire x1="-1.016" y1="3.429" x2="-0.762" y2="3.683" width="0.254" layer="94"/>
<wire x1="-0.762" y1="3.683" x2="1.778" y2="3.683" width="0.254" layer="94"/>
<wire x1="1.778" y1="3.683" x2="2.032" y2="3.429" width="0.254" layer="94"/>
<wire x1="-1.3208" y1="3.1242" x2="-1.016" y2="2.8194" width="0.254" layer="94"/>
<wire x1="-1.016" y1="2.8194" x2="-1.397" y2="0.6096" width="0.254" layer="94"/>
<wire x1="-1.397" y1="0.6096" x2="-1.651" y2="0.3556" width="0.254" layer="94"/>
<wire x1="-1.651" y1="0.3556" x2="-1.905" y2="0.6096" width="0.254" layer="94"/>
<wire x1="-1.905" y1="0.6096" x2="-1.524" y2="2.921" width="0.254" layer="94"/>
<wire x1="-1.524" y1="2.921" x2="-1.3208" y2="3.1242" width="0.254" layer="94"/>
<wire x1="-1.4732" y1="-0.0762" x2="-1.143" y2="0.254" width="0.254" layer="94"/>
<wire x1="-1.143" y1="0.254" x2="1.3462" y2="0.254" width="0.254" layer="94"/>
<wire x1="1.3462" y1="0.254" x2="1.5494" y2="0.0508" width="0.254" layer="94"/>
<wire x1="1.5494" y1="0.0508" x2="1.2446" y2="-0.254" width="0.254" layer="94"/>
<wire x1="1.2446" y1="-0.254" x2="-1.2954" y2="-0.254" width="0.254" layer="94"/>
<wire x1="-1.2954" y1="-0.254" x2="-1.4732" y2="-0.0762" width="0.254" layer="94"/>
<wire x1="-1.8288" y1="-0.3302" x2="-1.5748" y2="-0.5842" width="0.254" layer="94"/>
<wire x1="-2.286" y1="-3.1242" x2="-1.9558" y2="-2.794" width="0.254" layer="94"/>
<wire x1="-1.9558" y1="-2.794" x2="-1.5748" y2="-0.5842" width="0.254" layer="94"/>
<wire x1="-1.8288" y1="-0.3302" x2="-2.1082" y2="-0.6096" width="0.254" layer="94"/>
<wire x1="-2.1082" y1="-0.6096" x2="-2.4892" y2="-2.921" width="0.254" layer="94"/>
<wire x1="-2.4892" y1="-2.921" x2="-2.286" y2="-3.1242" width="0.254" layer="94"/>
<wire x1="-1.9812" y1="-3.429" x2="-1.7272" y2="-3.175" width="0.254" layer="94"/>
<wire x1="-1.7272" y1="-3.175" x2="0.8128" y2="-3.175" width="0.254" layer="94"/>
<wire x1="0.8128" y1="-3.175" x2="1.0668" y2="-3.429" width="0.254" layer="94"/>
<wire x1="1.0668" y1="-3.429" x2="0.8128" y2="-3.683" width="0.254" layer="94"/>
<wire x1="0.8128" y1="-3.683" x2="-1.7272" y2="-3.683" width="0.254" layer="94"/>
<wire x1="-1.7272" y1="-3.683" x2="-1.9812" y2="-3.429" width="0.254" layer="94"/>
<wire x1="1.7018" y1="-0.4064" x2="1.4478" y2="-0.6604" width="0.254" layer="94"/>
<wire x1="1.4478" y1="-0.6604" x2="1.0668" y2="-2.8194" width="0.254" layer="94"/>
<wire x1="1.0668" y1="-2.8194" x2="1.3716" y2="-3.1242" width="0.254" layer="94"/>
<wire x1="1.3716" y1="-3.1242" x2="1.5748" y2="-2.921" width="0.254" layer="94"/>
<wire x1="1.5748" y1="-2.921" x2="1.9558" y2="-0.6604" width="0.254" layer="94"/>
<wire x1="1.9558" y1="-0.6604" x2="1.7018" y2="-0.4064" width="0.254" layer="94"/>
<wire x1="2.286" y1="2.794" x2="1.905" y2="0.635" width="0.4064" layer="94"/>
<wire x1="1.778" y1="3.429" x2="-0.762" y2="3.429" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="2.794" x2="-1.651" y2="0.635" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.4064" layer="94"/>
<wire x1="1.651" y1="-0.762" x2="1.27" y2="-2.794" width="0.4064" layer="94"/>
<wire x1="0.762" y1="-3.429" x2="-1.651" y2="-3.429" width="0.4064" layer="94"/>
<wire x1="-2.286" y1="-2.921" x2="-1.905" y2="-0.635" width="0.4064" layer="94"/>
<wire x1="-8.89" y1="5.08" x2="8.89" y2="5.08" width="0.4064" layer="94"/>
<wire x1="8.89" y1="-5.08" x2="8.89" y2="5.08" width="0.4064" layer="94"/>
<wire x1="8.89" y1="-5.08" x2="-8.89" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-8.89" y1="5.08" x2="-8.89" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-4.953" x2="7.62" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-4.953" x2="5.08" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="0" y1="-4.953" x2="0" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-4.953" x2="-5.08" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="-4.953" x2="-7.62" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="4.953" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-4.953" x2="-2.54" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-4.953" x2="2.54" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="10.16" x2="-7.62" y2="4.953" width="0.1524" layer="94"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="4.953" width="0.1524" layer="94"/>
<wire x1="-4.191" y1="-3.683" x2="-3.937" y2="-3.683" width="0.3048" layer="94"/>
<circle x="-4.064" y="-3.683" radius="0.254" width="0.3048" layer="94"/>
<text x="-9.525" y="-5.08" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="11.43" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<text x="7.366" y="6.096" size="1.27" layer="95" rot="R90">CA</text>
<text x="4.826" y="6.096" size="1.27" layer="95" rot="R90">CA</text>
<text x="-7.874" y="-7.239" size="1.27" layer="95" rot="R90">a</text>
<text x="-5.334" y="-7.239" size="1.27" layer="95" rot="R90">b</text>
<text x="-2.794" y="-7.239" size="1.27" layer="95" rot="R90">c</text>
<text x="-0.254" y="-7.239" size="1.27" layer="95" rot="R90">d</text>
<text x="2.286" y="-7.239" size="1.27" layer="95" rot="R90">e</text>
<text x="4.826" y="-7.239" size="1.27" layer="95" rot="R90">f</text>
<text x="7.366" y="-7.239" size="1.27" layer="95" rot="R90">g</text>
<text x="-7.874" y="6.096" size="1.27" layer="95" rot="R90">dp</text>
<pin name="DP" x="-7.62" y="15.24" visible="pad" length="middle" direction="pas" rot="R270"/>
<pin name="F" x="5.08" y="-15.24" visible="pad" length="middle" direction="pas" rot="R90"/>
<pin name="D" x="0" y="-15.24" visible="pad" length="middle" direction="pas" rot="R90"/>
<pin name="B" x="-5.08" y="-15.24" visible="pad" length="middle" direction="pas" rot="R90"/>
<pin name="A" x="-7.62" y="-15.24" visible="pad" length="middle" direction="pas" rot="R90"/>
<pin name="CA" x="7.62" y="15.24" visible="pad" length="middle" direction="pas" rot="R270"/>
<pin name="C" x="-2.54" y="-15.24" visible="pad" length="middle" direction="pas" rot="R90"/>
<pin name="E" x="2.54" y="-15.24" visible="pad" length="middle" direction="pas" rot="R90"/>
<pin name="G" x="7.62" y="-15.24" visible="pad" length="middle" direction="pas" rot="R90"/>
<pin name="CA@1" x="5.08" y="15.24" visible="pad" length="middle" direction="pas" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="HD-E100" prefix="DIS">
<description>&lt;b&gt;LED DISPLAY&lt;/b&gt;&lt;p&gt;
 1-character 7 segment, decimal point left</description>
<gates>
<gate name="A" symbol="HD7L-A" x="0" y="0"/>
</gates>
<devices>
<device name="" package="HDSP-I">
<connects>
<connect gate="A" pin="A" pad="1"/>
<connect gate="A" pin="B" pad="13"/>
<connect gate="A" pin="C" pad="10"/>
<connect gate="A" pin="CA" pad="3"/>
<connect gate="A" pin="CA@1" pad="14"/>
<connect gate="A" pin="D" pad="8"/>
<connect gate="A" pin="DP" pad="6"/>
<connect gate="A" pin="E" pad="7"/>
<connect gate="A" pin="F" pad="2"/>
<connect gate="A" pin="G" pad="11"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="74ttl-din">
<description>&lt;b&gt;TTL Devices with DIN Symbols&lt;/b&gt;&lt;p&gt;
CadSoft and the author do not warrant that this library is free from error
or will meet your specific requirements.&lt;p&gt;
&lt;author&gt;Created by Holger Bettenbühl, hol.bet.@rhein-main.net&lt;/author&gt;</description>
<packages>
<package name="DIL14">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="8.89" y1="2.921" x2="-8.89" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-2.921" x2="8.89" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="8.89" y1="2.921" x2="8.89" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="2.921" x2="-8.89" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-2.921" x2="-8.89" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="1.016" x2="-8.89" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="0" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="0" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="-2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-9.271" y="-3.048" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-6.731" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="+UB">
<circle x="0" y="-0.635" radius="0.635" width="0.1524" layer="94"/>
<text x="1.27" y="-1.27" size="1.524" layer="95">&gt;NAME</text>
<pin name="+UB" x="0" y="2.54" visible="pad" length="short" direction="pwr" rot="R270"/>
</symbol>
<symbol name="-UB">
<wire x1="0" y1="-0.635" x2="0" y2="0.635" width="0" layer="94"/>
<wire x1="0.635" y1="0" x2="-0.635" y2="0" width="0" layer="94"/>
<circle x="0" y="0.635" radius="0.635" width="0.1524" layer="94"/>
<text x="1.27" y="0" size="1.524" layer="95">&gt;NAME</text>
<pin name="-UB" x="0" y="-2.54" visible="pad" length="short" direction="pwr" rot="R90"/>
</symbol>
<symbol name="164">
<wire x1="-7.62" y1="-30.48" x2="7.62" y2="-30.48" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-30.48" x2="-7.62" y2="-25.4" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-25.4" x2="7.62" y2="-25.4" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-25.4" x2="-7.62" y2="-20.32" width="0.254" layer="94"/>
<wire x1="7.62" y1="-25.4" x2="7.62" y2="-27.94" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-20.32" x2="7.62" y2="-20.32" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-20.32" x2="-7.62" y2="-15.24" width="0.254" layer="94"/>
<wire x1="7.62" y1="-20.32" x2="7.62" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-15.24" x2="7.62" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-15.24" x2="-7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="-15.24" x2="7.62" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-10.16" x2="7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-10.16" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-10.16" x2="7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="-7.62" y2="0" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="0" x2="7.62" y2="0" width="0.254" layer="94"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="0" x2="7.62" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-7.62" y1="5.08" x2="-1.27" y2="5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="5.08" x2="-7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="15.24" x2="5.08" y2="15.24" width="0.254" layer="94"/>
<wire x1="7.62" y1="15.24" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="-5.08" y1="15.24" x2="-5.08" y2="17.78" width="0.254" layer="94"/>
<wire x1="-5.08" y1="15.24" x2="-7.62" y2="15.24" width="0.254" layer="94"/>
<wire x1="-7.62" y1="17.78" x2="-5.08" y2="17.78" width="0.254" layer="94"/>
<wire x1="-7.62" y1="17.78" x2="-7.62" y2="19.3294" width="0.254" layer="94"/>
<wire x1="-7.62" y1="30.48" x2="7.62" y2="30.48" width="0.254" layer="94"/>
<wire x1="7.62" y1="30.48" x2="7.62" y2="17.78" width="0.254" layer="94"/>
<wire x1="5.08" y1="17.78" x2="7.62" y2="17.78" width="0.254" layer="94"/>
<wire x1="5.08" y1="17.78" x2="5.08" y2="15.24" width="0.254" layer="94"/>
<wire x1="5.08" y1="15.24" x2="-1.27" y2="15.24" width="0.254" layer="94"/>
<wire x1="-1.27" y1="15.24" x2="-1.27" y2="5.08" width="0.254" layer="94"/>
<wire x1="-1.27" y1="15.24" x2="-5.08" y2="15.24" width="0.254" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="2.54" width="0.254" layer="94"/>
<wire x1="-7.62" y1="25.4" x2="-10.16" y2="26.67" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="25.4" x2="-7.62" y2="30.48" width="0.254" layer="94"/>
<wire x1="-10.16" y1="26.67" x2="-10.16" y2="25.4" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="21.3106" x2="-5.6388" y2="20.32" width="0.1524" layer="94"/>
<wire x1="-5.6388" y1="20.32" x2="-7.62" y2="19.3294" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="19.3294" x2="-7.62" y2="20.32" width="0.254" layer="94"/>
<wire x1="7.62" y1="10.16" x2="10.16" y2="10.16" width="0.1524" layer="94"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="2.54" x2="10.16" y2="2.54" width="0.1524" layer="94"/>
<wire x1="7.62" y1="2.54" x2="7.62" y2="0" width="0.254" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="10.16" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="10.16" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="-12.7" x2="10.16" y2="-12.7" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-12.7" x2="7.62" y2="-15.24" width="0.254" layer="94"/>
<wire x1="7.62" y1="-17.78" x2="10.16" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-17.78" x2="7.62" y2="-20.32" width="0.254" layer="94"/>
<wire x1="7.62" y1="-22.86" x2="10.16" y2="-22.86" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-22.86" x2="7.62" y2="-25.4" width="0.254" layer="94"/>
<wire x1="7.62" y1="-27.94" x2="10.16" y2="-27.94" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-27.94" x2="7.62" y2="-30.48" width="0.254" layer="94"/>
<wire x1="-10.16" y1="25.4" x2="-7.62" y2="25.4" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="20.32" x2="-7.62" y2="20.32" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="20.32" x2="-7.62" y2="25.4" width="0.254" layer="94"/>
<wire x1="-10.16" y1="12.7" x2="-7.62" y2="12.7" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="12.7" x2="-7.62" y2="15.24" width="0.254" layer="94"/>
<wire x1="-10.16" y1="7.62" x2="-7.62" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="7.62" x2="-7.62" y2="12.7" width="0.254" layer="94"/>
<wire x1="1.397" y1="20.447" x2="1.397" y2="20.066" width="0.1524" layer="94"/>
<wire x1="1.397" y1="19.685" x2="2.286" y2="20.066" width="0.1524" layer="94"/>
<wire x1="2.286" y1="20.066" x2="1.397" y2="20.447" width="0.1524" layer="94"/>
<wire x1="0.254" y1="20.066" x2="1.397" y2="20.066" width="0.1524" layer="94"/>
<wire x1="1.397" y1="20.066" x2="1.397" y2="19.685" width="0.1524" layer="94"/>
<wire x1="-0.9398" y1="19.1262" x2="0.1778" y2="21.0058" width="0.1524" layer="94"/>
<text x="-5.08" y="12.065" size="2.032" layer="94">&amp;</text>
<text x="0" y="8.89" size="2.032" layer="94">1</text>
<text x="1.27" y="8.89" size="2.032" layer="94">D</text>
<text x="-4.445" y="19.05" size="2.032" layer="94">C1</text>
<text x="-6.35" y="24.13" size="2.032" layer="94">R</text>
<text x="-3.175" y="27.305" size="2.032" layer="94">SRG8</text>
<text x="-7.62" y="31.115" size="2.032" layer="95">&gt;NAME</text>
<text x="-7.62" y="-33.655" size="2.032" layer="96">&gt;VALUE</text>
<rectangle x1="1.4732" y1="19.7866" x2="1.778" y2="20.32" layer="94"/>
<rectangle x1="1.778" y1="19.9136" x2="2.0828" y2="20.193" layer="94"/>
<pin name="QH" x="12.7" y="-27.94" visible="pad" length="short" direction="out" rot="R180"/>
<pin name="QG" x="12.7" y="-22.86" visible="pad" length="short" direction="out" rot="R180"/>
<pin name="QF" x="12.7" y="-17.78" visible="pad" length="short" direction="out" rot="R180"/>
<pin name="QE" x="12.7" y="-12.7" visible="pad" length="short" direction="out" rot="R180"/>
<pin name="QD" x="12.7" y="-7.62" visible="pad" length="short" direction="out" rot="R180"/>
<pin name="QC" x="12.7" y="-2.54" visible="pad" length="short" direction="out" rot="R180"/>
<pin name="QB" x="12.7" y="2.54" visible="pad" length="short" direction="out" rot="R180"/>
<pin name="QA" x="12.7" y="10.16" visible="pad" length="short" direction="out" rot="R180"/>
<pin name="B" x="-12.7" y="7.62" visible="pad" length="short" direction="in" swaplevel="1"/>
<pin name="A" x="-12.7" y="12.7" visible="pad" length="short" direction="in" swaplevel="1"/>
<pin name="CLK" x="-12.7" y="20.32" visible="pad" length="short" direction="in"/>
<pin name="!CLR" x="-12.7" y="25.4" visible="pad" length="short" direction="in"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74*164" prefix="V">
<description>8-bit parallel out &lt;b&gt;SHIFT REGISTER&lt;/b&gt;</description>
<gates>
<gate name="/+UB" symbol="+UB" x="15.24" y="25.4" addlevel="request"/>
<gate name="/-UB" symbol="-UB" x="15.24" y="17.78" addlevel="request"/>
<gate name="1" symbol="164" x="0" y="0"/>
</gates>
<devices>
<device name="N" package="DIL14">
<connects>
<connect gate="/+UB" pin="+UB" pad="14"/>
<connect gate="/-UB" pin="-UB" pad="7"/>
<connect gate="1" pin="!CLR" pad="9"/>
<connect gate="1" pin="A" pad="1"/>
<connect gate="1" pin="B" pad="2"/>
<connect gate="1" pin="CLK" pad="8"/>
<connect gate="1" pin="QA" pad="3"/>
<connect gate="1" pin="QB" pad="4"/>
<connect gate="1" pin="QC" pad="5"/>
<connect gate="1" pin="QD" pad="6"/>
<connect gate="1" pin="QE" pad="10"/>
<connect gate="1" pin="QF" pad="11"/>
<connect gate="1" pin="QG" pad="12"/>
<connect gate="1" pin="QH" pad="13"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="DIS1" library="display-hp" deviceset="HD-E100" device=""/>
<part name="V1" library="74ttl-din" deviceset="74*164" device="N"/>
<part name="DIS2" library="display-hp" deviceset="HD-E100" device=""/>
<part name="V2" library="74ttl-din" deviceset="74*164" device="N"/>
<part name="DIS3" library="display-hp" deviceset="HD-E100" device=""/>
<part name="V3" library="74ttl-din" deviceset="74*164" device="N"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="DIS1" gate="A" x="170.18" y="231.14" rot="MR90"/>
<instance part="V1" gate="1" x="93.98" y="264.16"/>
<instance part="DIS2" gate="A" x="170.18" y="160.02" rot="MR90"/>
<instance part="V2" gate="1" x="93.98" y="193.04"/>
<instance part="DIS3" gate="A" x="170.18" y="81.28" rot="MR90"/>
<instance part="V3" gate="1" x="93.98" y="114.3"/>
</instances>
<busses>
</busses>
<nets>
<net name="DATA_PIN_164" class="0">
<segment>
<pinref part="V1" gate="1" pin="A"/>
<wire x1="81.28" y1="276.86" x2="78.74" y2="276.86" width="0.1524" layer="91"/>
<wire x1="78.74" y1="276.86" x2="78.74" y2="271.78" width="0.1524" layer="91"/>
<pinref part="V1" gate="1" pin="B"/>
<wire x1="78.74" y1="271.78" x2="81.28" y2="271.78" width="0.1524" layer="91"/>
<label x="73.66" y="276.86" size="1.778" layer="95" rot="MR0"/>
<wire x1="78.74" y1="276.86" x2="73.66" y2="276.86" width="0.1524" layer="91"/>
<junction x="78.74" y="276.86"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="V1" gate="1" pin="QB"/>
<wire x1="106.68" y1="266.7" x2="124.46" y2="266.7" width="0.1524" layer="91"/>
<wire x1="124.46" y1="266.7" x2="124.46" y2="238.76" width="0.1524" layer="91"/>
<pinref part="DIS1" gate="A" pin="G"/>
<wire x1="124.46" y1="238.76" x2="154.94" y2="238.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="V1" gate="1" pin="QC"/>
<wire x1="106.68" y1="261.62" x2="121.92" y2="261.62" width="0.1524" layer="91"/>
<wire x1="121.92" y1="261.62" x2="121.92" y2="236.22" width="0.1524" layer="91"/>
<pinref part="DIS1" gate="A" pin="F"/>
<wire x1="121.92" y1="236.22" x2="154.94" y2="236.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="V1" gate="1" pin="QD"/>
<wire x1="106.68" y1="256.54" x2="119.38" y2="256.54" width="0.1524" layer="91"/>
<wire x1="119.38" y1="256.54" x2="119.38" y2="233.68" width="0.1524" layer="91"/>
<pinref part="DIS1" gate="A" pin="E"/>
<wire x1="119.38" y1="233.68" x2="154.94" y2="233.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="5V" class="0">
<segment>
<pinref part="V1" gate="1" pin="!CLR"/>
<wire x1="81.28" y1="289.56" x2="78.74" y2="289.56" width="0.1524" layer="91"/>
<wire x1="78.74" y1="289.56" x2="78.74" y2="292.1" width="0.1524" layer="91"/>
<label x="78.74" y="294.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="DIS1" gate="A" pin="CA@1"/>
<wire x1="185.42" y1="236.22" x2="187.96" y2="236.22" width="0.1524" layer="91"/>
<wire x1="187.96" y1="236.22" x2="187.96" y2="238.76" width="0.1524" layer="91"/>
<pinref part="DIS1" gate="A" pin="CA"/>
<wire x1="187.96" y1="238.76" x2="185.42" y2="238.76" width="0.1524" layer="91"/>
<wire x1="187.96" y1="238.76" x2="187.96" y2="243.84" width="0.1524" layer="91"/>
<junction x="187.96" y="238.76"/>
<label x="187.96" y="243.84" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="V2" gate="1" pin="!CLR"/>
<wire x1="81.28" y1="218.44" x2="78.74" y2="218.44" width="0.1524" layer="91"/>
<wire x1="78.74" y1="218.44" x2="78.74" y2="220.98" width="0.1524" layer="91"/>
<label x="78.74" y="223.52" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="DIS2" gate="A" pin="CA@1"/>
<wire x1="185.42" y1="165.1" x2="187.96" y2="165.1" width="0.1524" layer="91"/>
<wire x1="187.96" y1="165.1" x2="187.96" y2="167.64" width="0.1524" layer="91"/>
<pinref part="DIS2" gate="A" pin="CA"/>
<wire x1="187.96" y1="167.64" x2="185.42" y2="167.64" width="0.1524" layer="91"/>
<wire x1="187.96" y1="167.64" x2="187.96" y2="172.72" width="0.1524" layer="91"/>
<junction x="187.96" y="167.64"/>
<label x="187.96" y="172.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="V3" gate="1" pin="!CLR"/>
<wire x1="81.28" y1="139.7" x2="78.74" y2="139.7" width="0.1524" layer="91"/>
<wire x1="78.74" y1="139.7" x2="78.74" y2="142.24" width="0.1524" layer="91"/>
<label x="78.74" y="144.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="DIS3" gate="A" pin="CA@1"/>
<wire x1="185.42" y1="86.36" x2="187.96" y2="86.36" width="0.1524" layer="91"/>
<wire x1="187.96" y1="86.36" x2="187.96" y2="88.9" width="0.1524" layer="91"/>
<pinref part="DIS3" gate="A" pin="CA"/>
<wire x1="187.96" y1="88.9" x2="185.42" y2="88.9" width="0.1524" layer="91"/>
<wire x1="187.96" y1="88.9" x2="187.96" y2="93.98" width="0.1524" layer="91"/>
<junction x="187.96" y="88.9"/>
<label x="187.96" y="93.98" size="1.778" layer="95"/>
</segment>
</net>
<net name="CLOCK_IN_PIN" class="0">
<segment>
<pinref part="V1" gate="1" pin="CLK"/>
<wire x1="81.28" y1="284.48" x2="76.2" y2="284.48" width="0.1524" layer="91"/>
<label x="76.2" y="284.48" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<pinref part="V2" gate="1" pin="CLK"/>
<wire x1="81.28" y1="213.36" x2="78.74" y2="213.36" width="0.1524" layer="91"/>
<label x="81.28" y="213.36" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<pinref part="V3" gate="1" pin="CLK"/>
<wire x1="81.28" y1="134.62" x2="78.74" y2="134.62" width="0.1524" layer="91"/>
<label x="81.28" y="134.62" size="1.778" layer="95" rot="MR0"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="V1" gate="1" pin="QE"/>
<wire x1="106.68" y1="251.46" x2="116.84" y2="251.46" width="0.1524" layer="91"/>
<wire x1="116.84" y1="251.46" x2="116.84" y2="231.14" width="0.1524" layer="91"/>
<pinref part="DIS1" gate="A" pin="D"/>
<wire x1="116.84" y1="231.14" x2="154.94" y2="231.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="V1" gate="1" pin="QF"/>
<wire x1="106.68" y1="246.38" x2="114.3" y2="246.38" width="0.1524" layer="91"/>
<wire x1="114.3" y1="246.38" x2="114.3" y2="228.6" width="0.1524" layer="91"/>
<pinref part="DIS1" gate="A" pin="C"/>
<wire x1="114.3" y1="228.6" x2="154.94" y2="228.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="V1" gate="1" pin="QG"/>
<wire x1="106.68" y1="241.3" x2="111.76" y2="241.3" width="0.1524" layer="91"/>
<wire x1="111.76" y1="241.3" x2="111.76" y2="226.06" width="0.1524" layer="91"/>
<pinref part="DIS1" gate="A" pin="B"/>
<wire x1="111.76" y1="226.06" x2="154.94" y2="226.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="V2" gate="1" pin="A"/>
<wire x1="81.28" y1="205.74" x2="78.74" y2="205.74" width="0.1524" layer="91"/>
<wire x1="78.74" y1="205.74" x2="78.74" y2="200.66" width="0.1524" layer="91"/>
<pinref part="V2" gate="1" pin="B"/>
<wire x1="78.74" y1="200.66" x2="81.28" y2="200.66" width="0.1524" layer="91"/>
<junction x="78.74" y="205.74"/>
<wire x1="78.74" y1="205.74" x2="58.42" y2="205.74" width="0.1524" layer="91"/>
<wire x1="58.42" y1="205.74" x2="58.42" y2="228.6" width="0.1524" layer="91"/>
<pinref part="V1" gate="1" pin="QH"/>
<wire x1="106.68" y1="236.22" x2="109.22" y2="236.22" width="0.1524" layer="91"/>
<wire x1="109.22" y1="236.22" x2="109.22" y2="228.6" width="0.1524" layer="91"/>
<pinref part="DIS1" gate="A" pin="A"/>
<wire x1="109.22" y1="228.6" x2="109.22" y2="223.52" width="0.1524" layer="91"/>
<wire x1="109.22" y1="223.52" x2="154.94" y2="223.52" width="0.1524" layer="91"/>
<wire x1="58.42" y1="228.6" x2="109.22" y2="228.6" width="0.1524" layer="91"/>
<junction x="109.22" y="228.6"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="V2" gate="1" pin="QB"/>
<wire x1="106.68" y1="195.58" x2="124.46" y2="195.58" width="0.1524" layer="91"/>
<wire x1="124.46" y1="195.58" x2="124.46" y2="167.64" width="0.1524" layer="91"/>
<pinref part="DIS2" gate="A" pin="G"/>
<wire x1="124.46" y1="167.64" x2="154.94" y2="167.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="V2" gate="1" pin="QC"/>
<wire x1="106.68" y1="190.5" x2="121.92" y2="190.5" width="0.1524" layer="91"/>
<wire x1="121.92" y1="190.5" x2="121.92" y2="165.1" width="0.1524" layer="91"/>
<pinref part="DIS2" gate="A" pin="F"/>
<wire x1="121.92" y1="165.1" x2="154.94" y2="165.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="V2" gate="1" pin="QD"/>
<wire x1="106.68" y1="185.42" x2="119.38" y2="185.42" width="0.1524" layer="91"/>
<wire x1="119.38" y1="185.42" x2="119.38" y2="162.56" width="0.1524" layer="91"/>
<pinref part="DIS2" gate="A" pin="E"/>
<wire x1="119.38" y1="162.56" x2="154.94" y2="162.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="V2" gate="1" pin="QE"/>
<wire x1="106.68" y1="180.34" x2="116.84" y2="180.34" width="0.1524" layer="91"/>
<wire x1="116.84" y1="180.34" x2="116.84" y2="160.02" width="0.1524" layer="91"/>
<pinref part="DIS2" gate="A" pin="D"/>
<wire x1="116.84" y1="160.02" x2="154.94" y2="160.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="V2" gate="1" pin="QF"/>
<wire x1="106.68" y1="175.26" x2="114.3" y2="175.26" width="0.1524" layer="91"/>
<wire x1="114.3" y1="175.26" x2="114.3" y2="157.48" width="0.1524" layer="91"/>
<pinref part="DIS2" gate="A" pin="C"/>
<wire x1="114.3" y1="157.48" x2="154.94" y2="157.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="V2" gate="1" pin="QG"/>
<wire x1="106.68" y1="170.18" x2="111.76" y2="170.18" width="0.1524" layer="91"/>
<wire x1="111.76" y1="170.18" x2="111.76" y2="154.94" width="0.1524" layer="91"/>
<pinref part="DIS2" gate="A" pin="B"/>
<wire x1="111.76" y1="154.94" x2="154.94" y2="154.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="V3" gate="1" pin="A"/>
<wire x1="81.28" y1="127" x2="78.74" y2="127" width="0.1524" layer="91"/>
<wire x1="78.74" y1="127" x2="78.74" y2="121.92" width="0.1524" layer="91"/>
<pinref part="V3" gate="1" pin="B"/>
<wire x1="78.74" y1="121.92" x2="81.28" y2="121.92" width="0.1524" layer="91"/>
<junction x="78.74" y="127"/>
<wire x1="78.74" y1="127" x2="58.42" y2="127" width="0.1524" layer="91"/>
<wire x1="58.42" y1="127" x2="58.42" y2="154.94" width="0.1524" layer="91"/>
<pinref part="V2" gate="1" pin="QH"/>
<wire x1="106.68" y1="165.1" x2="109.22" y2="165.1" width="0.1524" layer="91"/>
<wire x1="109.22" y1="165.1" x2="109.22" y2="154.94" width="0.1524" layer="91"/>
<pinref part="DIS2" gate="A" pin="A"/>
<wire x1="109.22" y1="154.94" x2="109.22" y2="152.4" width="0.1524" layer="91"/>
<wire x1="109.22" y1="152.4" x2="154.94" y2="152.4" width="0.1524" layer="91"/>
<wire x1="58.42" y1="154.94" x2="109.22" y2="154.94" width="0.1524" layer="91"/>
<junction x="109.22" y="154.94"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="V3" gate="1" pin="QB"/>
<wire x1="106.68" y1="116.84" x2="124.46" y2="116.84" width="0.1524" layer="91"/>
<wire x1="124.46" y1="116.84" x2="124.46" y2="88.9" width="0.1524" layer="91"/>
<pinref part="DIS3" gate="A" pin="G"/>
<wire x1="124.46" y1="88.9" x2="154.94" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="V3" gate="1" pin="QC"/>
<wire x1="106.68" y1="111.76" x2="121.92" y2="111.76" width="0.1524" layer="91"/>
<wire x1="121.92" y1="111.76" x2="121.92" y2="86.36" width="0.1524" layer="91"/>
<pinref part="DIS3" gate="A" pin="F"/>
<wire x1="121.92" y1="86.36" x2="154.94" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="V3" gate="1" pin="QD"/>
<wire x1="106.68" y1="106.68" x2="119.38" y2="106.68" width="0.1524" layer="91"/>
<wire x1="119.38" y1="106.68" x2="119.38" y2="83.82" width="0.1524" layer="91"/>
<pinref part="DIS3" gate="A" pin="E"/>
<wire x1="119.38" y1="83.82" x2="154.94" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="V3" gate="1" pin="QE"/>
<wire x1="106.68" y1="101.6" x2="116.84" y2="101.6" width="0.1524" layer="91"/>
<wire x1="116.84" y1="101.6" x2="116.84" y2="81.28" width="0.1524" layer="91"/>
<pinref part="DIS3" gate="A" pin="D"/>
<wire x1="116.84" y1="81.28" x2="154.94" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="V3" gate="1" pin="QF"/>
<wire x1="106.68" y1="96.52" x2="114.3" y2="96.52" width="0.1524" layer="91"/>
<wire x1="114.3" y1="96.52" x2="114.3" y2="78.74" width="0.1524" layer="91"/>
<pinref part="DIS3" gate="A" pin="C"/>
<wire x1="114.3" y1="78.74" x2="154.94" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="V3" gate="1" pin="QG"/>
<wire x1="106.68" y1="91.44" x2="111.76" y2="91.44" width="0.1524" layer="91"/>
<wire x1="111.76" y1="91.44" x2="111.76" y2="76.2" width="0.1524" layer="91"/>
<pinref part="DIS3" gate="A" pin="B"/>
<wire x1="111.76" y1="76.2" x2="154.94" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="V3" gate="1" pin="QH"/>
<wire x1="106.68" y1="86.36" x2="109.22" y2="86.36" width="0.1524" layer="91"/>
<wire x1="109.22" y1="86.36" x2="109.22" y2="73.66" width="0.1524" layer="91"/>
<pinref part="DIS3" gate="A" pin="A"/>
<wire x1="109.22" y1="73.66" x2="154.94" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
