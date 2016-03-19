<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.5.0">
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
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="no" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="pmodio">
<packages>
<package name="NHD-12864MZ-FSW-GBW-L">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<pad name="VDD" x="-19" y="-24.6" drill="1.016" shape="square" rot="R90" first="yes"/>
<pad name="VSS0" x="-17" y="-24.6" drill="1.016" rot="R90"/>
<pad name="V0" x="-15" y="-24.6" drill="1.016" rot="R90"/>
<pad name="DB0" x="-13" y="-24.6" drill="1.016" rot="R90"/>
<pad name="DB1" x="-11" y="-24.6" drill="1.016" rot="R90"/>
<pad name="DB2" x="-9" y="-24.6" drill="1.016" rot="R90"/>
<pad name="DB3" x="-7" y="-24.6" drill="1.016" rot="R90"/>
<pad name="DB4" x="-5" y="-24.6" drill="1.016" rot="R90"/>
<pad name="DB5" x="-3" y="-24.6" drill="1.016" rot="R90"/>
<pad name="DB6" x="-1" y="-24.6" drill="1.016" rot="R90"/>
<pad name="DB7" x="1" y="-24.6" drill="1.016" rot="R90"/>
<pad name="CS2B" x="3" y="-24.6" drill="1.016" rot="R90"/>
<pad name="CS1B" x="5" y="-24.6" drill="1.016" rot="R90"/>
<pad name="RST" x="7" y="-24.6" drill="1.016" rot="R90"/>
<pad name="RW" x="9" y="-24.6" drill="1.016" rot="R90"/>
<pad name="RS" x="11" y="-24.6" drill="1.016" rot="R90"/>
<pad name="E" x="13" y="-24.6" drill="1.016" rot="R90"/>
<pad name="VSS1" x="15" y="-24.6" drill="1.016" rot="R90"/>
<pad name="LED+" x="17" y="-24.6" drill="1.016" rot="R90"/>
<pad name="LED-" x="19" y="-24.6" drill="1.016" rot="R90"/>
<text x="-20" y="-22" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<wire x1="-31.6" y1="-26.1" x2="31.6" y2="-26.1" width="0.127" layer="21"/>
<wire x1="-31.6" y1="-26.1" x2="-31.6" y2="26.1" width="0.127" layer="21"/>
<wire x1="31.6" y1="-26.1" x2="31.6" y2="26.1" width="0.127" layer="21"/>
<wire x1="31.6" y1="26.1" x2="-31.6" y2="26.1" width="0.127" layer="21"/>
<text x="13" y="-22" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-20.25" y1="-23.25" x2="-20.25" y2="-25.75" width="0.127" layer="21"/>
<wire x1="-20.25" y1="-25.75" x2="20.25" y2="-25.75" width="0.127" layer="21"/>
<wire x1="20.25" y1="-25.75" x2="20.25" y2="-23.25" width="0.127" layer="21"/>
<wire x1="20.25" y1="-23.25" x2="-20.25" y2="-23.25" width="0.127" layer="21"/>
<wire x1="-31.5" y1="-18" x2="10.5" y2="-18" width="0.127" layer="49"/>
<wire x1="10.5" y1="-18" x2="10.5" y2="-7" width="0.127" layer="49"/>
<wire x1="10.5" y1="-7" x2="-31.5" y2="-7" width="0.127" layer="49"/>
<wire x1="-31.5" y1="-7" x2="-31.5" y2="-18" width="0.127" layer="49"/>
<text x="-29" y="-15" size="1.27" layer="49">This area safe for mounting parts undernead LCD.

Max Height: 3mm</text>
</package>
<package name="SOT23-6">
<description>&lt;b&gt;Small Outline Transistor&lt;/b&gt; 6 lead</description>
<wire x1="1.5" y1="-0.781" x2="-1.5" y2="-0.781" width="0.1524" layer="21"/>
<wire x1="-1.5" y1="-0.781" x2="-1.5" y2="0.781" width="0.1524" layer="21"/>
<wire x1="-1.5" y1="0.781" x2="1.5" y2="0.781" width="0.1524" layer="21"/>
<wire x1="1.5" y1="0.781" x2="1.5" y2="-0.781" width="0.1524" layer="21"/>
<circle x="-1.15" y="-0.5" radius="0.1" width="0" layer="21"/>
<smd name="1" x="-0.95" y="-1.15" dx="0.6" dy="0.9" layer="1"/>
<smd name="2" x="0" y="-1.15" dx="0.6" dy="0.9" layer="1"/>
<smd name="3" x="0.95" y="-1.15" dx="0.6" dy="0.9" layer="1"/>
<smd name="4" x="0.95" y="1.15" dx="0.6" dy="0.9" layer="1"/>
<smd name="5" x="0" y="1.15" dx="0.6" dy="0.9" layer="1"/>
<smd name="6" x="-0.95" y="1.15" dx="0.6" dy="0.9" layer="1"/>
<text x="-1.397" y="-2.672" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<text x="-1.397" y="1.702" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<rectangle x1="-1.2" y1="-1.4" x2="-0.7" y2="-0.8" layer="51"/>
<rectangle x1="-0.25" y1="-1.4" x2="0.25" y2="-0.8" layer="51"/>
<rectangle x1="0.7" y1="-1.4" x2="1.2" y2="-0.8" layer="51"/>
<rectangle x1="0.7" y1="0.8" x2="1.2" y2="1.4" layer="51"/>
<rectangle x1="-0.25" y1="0.8" x2="0.25" y2="1.4" layer="51"/>
<rectangle x1="-1.2" y1="0.8" x2="-0.7" y2="1.4" layer="51"/>
</package>
<package name="PEC11R-4XXXF-SXXXX">
<description>Bourns Quadrature Rotary Encoder &lt;br&gt;
PEC11R-4215K-S0012</description>
<wire x1="-6" y1="-7" x2="6" y2="-7" width="0.127" layer="21"/>
<wire x1="6" y1="-7" x2="6" y2="6.5" width="0.127" layer="21"/>
<wire x1="6" y1="6.5" x2="-6" y2="6.5" width="0.127" layer="21"/>
<wire x1="-6" y1="6.5" x2="-6" y2="-7" width="0.127" layer="21"/>
<circle x="0" y="0" radius="3" width="0.127" layer="21"/>
<pad name="A" x="-2.5" y="-7.5" drill="1.2"/>
<pad name="C" x="0" y="-7.5" drill="1.2" shape="square"/>
<pad name="B" x="2.5" y="-7.5" drill="1.2"/>
<pad name="SW1" x="-2.5" y="7" drill="1.2"/>
<pad name="SW2" x="2.5" y="7" drill="1.2"/>
<text x="-6" y="8" size="1.27" layer="25">&gt;NAME</text>
<hole x="6.2" y="0" drill="2.8"/>
<hole x="-6.2" y="0" drill="2.8"/>
<wire x1="-3" y1="0" x2="3" y2="0" width="0.127" layer="21"/>
<text x="-6" y="-10" size="1.27" layer="27">&gt;Value</text>
</package>
<package name="2X06/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-7.62" y1="-1.905" x2="-5.08" y2="-1.905" width="0.1524" layer="48"/>
<wire x1="-5.08" y1="-1.905" x2="-5.08" y2="0.635" width="0.1524" layer="48"/>
<wire x1="-5.08" y1="0.635" x2="-7.62" y2="0.635" width="0.1524" layer="48"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-1.905" width="0.1524" layer="48"/>
<wire x1="-6.35" y1="6.985" x2="-6.35" y2="1.27" width="0.762" layer="48"/>
<wire x1="-5.08" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="48"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="0.635" width="0.1524" layer="48"/>
<wire x1="-2.54" y1="0.635" x2="-5.08" y2="0.635" width="0.1524" layer="48"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="1.27" width="0.762" layer="48"/>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="48"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="48"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="48"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="48"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="48"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="48"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="48"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="48"/>
<wire x1="2.54" y1="-1.905" x2="5.08" y2="-1.905" width="0.1524" layer="48"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0.635" width="0.1524" layer="48"/>
<wire x1="5.08" y1="0.635" x2="2.54" y2="0.635" width="0.1524" layer="48"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="1.27" width="0.762" layer="48"/>
<wire x1="5.08" y1="-1.905" x2="7.62" y2="-1.905" width="0.1524" layer="48"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="0.635" width="0.1524" layer="48"/>
<wire x1="7.62" y1="0.635" x2="5.08" y2="0.635" width="0.1524" layer="48"/>
<wire x1="6.35" y1="6.985" x2="6.35" y2="1.27" width="0.762" layer="48"/>
<pad name="12" x="-6.35" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="11" x="-3.81" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="10" x="-1.27" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="9" x="1.27" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="8" x="3.81" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="7" x="6.35" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="6" x="-6.35" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="5" x="-3.81" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="4" x="-1.27" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="3" x="1.27" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="2" x="3.81" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="1" x="6.35" y="-6.35" drill="1.016" shape="octagon"/>
<text x="-8.255" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="9.525" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-6.731" y1="0.635" x2="-5.969" y2="1.143" layer="48"/>
<rectangle x1="-4.191" y1="0.635" x2="-3.429" y2="1.143" layer="48"/>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="48"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="48"/>
<rectangle x1="3.429" y1="0.635" x2="4.191" y2="1.143" layer="48"/>
<rectangle x1="5.969" y1="0.635" x2="6.731" y2="1.143" layer="48"/>
<rectangle x1="-6.731" y1="-2.921" x2="-5.969" y2="-1.905" layer="48"/>
<rectangle x1="-4.191" y1="-2.921" x2="-3.429" y2="-1.905" layer="48"/>
<rectangle x1="-6.731" y1="-5.461" x2="-5.969" y2="-4.699" layer="48"/>
<rectangle x1="-6.731" y1="-4.699" x2="-5.969" y2="-2.921" layer="48"/>
<rectangle x1="-4.191" y1="-4.699" x2="-3.429" y2="-2.921" layer="48"/>
<rectangle x1="-4.191" y1="-5.461" x2="-3.429" y2="-4.699" layer="48"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="48"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="48"/>
<rectangle x1="-1.651" y1="-5.461" x2="-0.889" y2="-4.699" layer="48"/>
<rectangle x1="-1.651" y1="-4.699" x2="-0.889" y2="-2.921" layer="48"/>
<rectangle x1="0.889" y1="-4.699" x2="1.651" y2="-2.921" layer="48"/>
<rectangle x1="0.889" y1="-5.461" x2="1.651" y2="-4.699" layer="48"/>
<rectangle x1="3.429" y1="-2.921" x2="4.191" y2="-1.905" layer="48"/>
<rectangle x1="5.969" y1="-2.921" x2="6.731" y2="-1.905" layer="48"/>
<rectangle x1="3.429" y1="-5.461" x2="4.191" y2="-4.699" layer="48"/>
<rectangle x1="3.429" y1="-4.699" x2="4.191" y2="-2.921" layer="48"/>
<rectangle x1="5.969" y1="-4.699" x2="6.731" y2="-2.921" layer="48"/>
<rectangle x1="5.969" y1="-5.461" x2="6.731" y2="-4.699" layer="48"/>
<wire x1="-7.62" y1="-7.62" x2="7.62" y2="-7.62" width="0.127" layer="21"/>
<wire x1="7.62" y1="-7.62" x2="7.62" y2="-2.54" width="0.127" layer="21"/>
<wire x1="7.62" y1="-2.54" x2="-7.62" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-2.54" x2="-7.62" y2="-7.62" width="0.127" layer="21"/>
</package>
<package name="TSSOP24">
<description>&lt;b&gt;24-Lead Thin Shrink Small Outline Package TSSOP&lt;/b&gt; (RU-24)&lt;p&gt;
Source: http://www.analog.com/UploadedFiles/Data_Sheets/39677768AD7714_c.pdf</description>
<wire x1="-3.875" y1="-2.175" x2="3.875" y2="-2.175" width="0.1524" layer="21"/>
<wire x1="3.875" y1="2.175" x2="3.875" y2="-2.175" width="0.1524" layer="21"/>
<wire x1="3.875" y1="2.175" x2="-3.875" y2="2.175" width="0.1524" layer="21"/>
<wire x1="-3.875" y1="-2.175" x2="-3.875" y2="2.175" width="0.1524" layer="21"/>
<circle x="-3.1506" y="-1.4692" radius="0.2773" width="0.1524" layer="21"/>
<smd name="1" x="-3.575" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="2" x="-2.925" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="3" x="-2.275" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="4" x="-1.625" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="5" x="-0.975" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="6" x="-0.325" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="7" x="0.325" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="8" x="0.975" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="9" x="1.625" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="10" x="2.275" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="11" x="2.925" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="12" x="3.575" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="13" x="3.575" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="14" x="2.925" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="15" x="2.275" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="16" x="1.625" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="17" x="0.975" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="18" x="0.325" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="19" x="-0.325" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="20" x="-0.975" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="21" x="-1.625" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="22" x="-2.275" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="23" x="-2.925" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="24" x="-3.575" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<text x="-4.1956" y="-2.0828" size="1.016" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="5.1862" y="-2.0828" size="1.016" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-3.6766" y1="-3.121" x2="-3.4734" y2="-2.25" layer="51"/>
<rectangle x1="-3.0266" y1="-3.121" x2="-2.8234" y2="-2.25" layer="51"/>
<rectangle x1="-2.3766" y1="-3.121" x2="-2.1734" y2="-2.25" layer="51"/>
<rectangle x1="-1.7266" y1="-3.121" x2="-1.5234" y2="-2.25" layer="51"/>
<rectangle x1="-1.0766" y1="-3.121" x2="-0.8734" y2="-2.25" layer="51"/>
<rectangle x1="-0.4266" y1="-3.121" x2="-0.2234" y2="-2.25" layer="51"/>
<rectangle x1="0.2234" y1="-3.121" x2="0.4266" y2="-2.25" layer="51"/>
<rectangle x1="0.8734" y1="-3.121" x2="1.0766" y2="-2.25" layer="51"/>
<rectangle x1="1.5234" y1="-3.121" x2="1.7266" y2="-2.25" layer="51"/>
<rectangle x1="2.1734" y1="-3.121" x2="2.3766" y2="-2.25" layer="51"/>
<rectangle x1="2.8234" y1="-3.121" x2="3.0266" y2="-2.25" layer="51"/>
<rectangle x1="3.4734" y1="-3.121" x2="3.6766" y2="-2.25" layer="51"/>
<rectangle x1="3.4734" y1="2.25" x2="3.6766" y2="3.121" layer="51"/>
<rectangle x1="2.8234" y1="2.25" x2="3.0266" y2="3.121" layer="51"/>
<rectangle x1="2.1734" y1="2.25" x2="2.3766" y2="3.121" layer="51"/>
<rectangle x1="1.5234" y1="2.25" x2="1.7266" y2="3.121" layer="51"/>
<rectangle x1="0.8734" y1="2.25" x2="1.0766" y2="3.121" layer="51"/>
<rectangle x1="0.2234" y1="2.25" x2="0.4266" y2="3.121" layer="51"/>
<rectangle x1="-0.4266" y1="2.25" x2="-0.2234" y2="3.121" layer="51"/>
<rectangle x1="-1.0766" y1="2.25" x2="-0.8734" y2="3.121" layer="51"/>
<rectangle x1="-1.7266" y1="2.25" x2="-1.5234" y2="3.121" layer="51"/>
<rectangle x1="-2.3766" y1="2.25" x2="-2.1734" y2="3.121" layer="51"/>
<rectangle x1="-3.0266" y1="2.25" x2="-2.8234" y2="3.121" layer="51"/>
<rectangle x1="-3.6766" y1="2.25" x2="-3.4734" y2="3.121" layer="51"/>
</package>
<package name="C0402">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C0805">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;</description>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="R0603">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.432" y1="-0.356" x2="0.432" y2="-0.356" width="0.1524" layer="51"/>
<wire x1="0.432" y1="0.356" x2="-0.432" y2="0.356" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.85" y="0" dx="1" dy="1.1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1" dy="1.1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4318" y1="-0.4318" x2="0.8382" y2="0.4318" layer="51"/>
<rectangle x1="-0.8382" y1="-0.4318" x2="-0.4318" y2="0.4318" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
</packages>
<symbols>
<symbol name="NHD-12864MZ-FSW-GBW-L">
<wire x1="-7.62" y1="-53.34" x2="7.62" y2="-53.34" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-53.34" x2="7.62" y2="48.26" width="0.4064" layer="94"/>
<wire x1="7.62" y1="48.26" x2="-7.62" y2="48.26" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="48.26" x2="-7.62" y2="-53.34" width="0.4064" layer="94"/>
<text x="-6.35" y="51.435" size="1.778" layer="95">&gt;NAME</text>
<pin name="VDD" x="-5.08" y="45.72" visible="pin" length="short" function="dot"/>
<pin name="VSS0" x="-5.08" y="40.64" visible="pin" length="short" function="dot"/>
<pin name="V0" x="-5.08" y="35.56" visible="pin" length="short" function="dot"/>
<pin name="DB1" x="-5.08" y="25.4" visible="pin" length="short" function="dot"/>
<pin name="DB0" x="-5.08" y="30.48" visible="pin" length="short" function="dot"/>
<pin name="DB2" x="-5.08" y="20.32" visible="pin" length="short" function="dot"/>
<pin name="DB3" x="-5.08" y="15.24" visible="pin" length="short" function="dot"/>
<pin name="DB4" x="-5.08" y="10.16" visible="pin" length="short" function="dot"/>
<pin name="DB5" x="-5.08" y="5.08" visible="pin" length="short" function="dot"/>
<pin name="DB6" x="-5.08" y="0" visible="pin" length="short" function="dot"/>
<pin name="DB7" x="-5.08" y="-5.08" visible="pin" length="short" function="dot"/>
<pin name="CS2B" x="-5.08" y="-10.16" visible="pin" length="short" function="dot"/>
<pin name="CS1B" x="-5.08" y="-15.24" visible="pin" length="short" function="dot"/>
<pin name="RST" x="-5.08" y="-20.32" visible="pin" length="short" function="dot"/>
<pin name="R/W" x="-5.08" y="-25.4" visible="pin" length="short" function="dot"/>
<pin name="RS" x="-5.08" y="-30.48" visible="pin" length="short" function="dot"/>
<pin name="E" x="-5.08" y="-35.56" visible="pin" length="short" function="dot"/>
<pin name="VSS1" x="-5.08" y="-40.64" visible="pin" length="short" function="dot"/>
<pin name="LED+" x="-5.08" y="-45.72" visible="pin" length="short" function="dot"/>
<pin name="LED-" x="-5.08" y="-50.8" visible="pin" length="short" function="dot"/>
<text x="-7.62" y="-55.88" size="1.778" layer="94">&gt;VALUE</text>
</symbol>
<symbol name="LTC1754-5">
<wire x1="-10.16" y1="7.62" x2="10.16" y2="7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="7.62" x2="10.16" y2="-10.16" width="0.254" layer="94"/>
<wire x1="10.16" y1="-10.16" x2="-10.16" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-10.16" x2="-10.16" y2="7.62" width="0.254" layer="94"/>
<pin name="VOUT" x="15.24" y="0" visible="pin" length="middle" rot="R180"/>
<pin name="GND" x="0" y="-15.24" visible="pin" length="middle" rot="R90"/>
<pin name="SHDN" x="-15.24" y="2.54" visible="pin" length="middle" function="dot"/>
<pin name="C+" x="-15.24" y="-2.54" visible="pin" length="middle"/>
<pin name="VIN" x="0" y="12.7" visible="pin" length="middle" rot="R270"/>
<pin name="C-" x="-15.24" y="-5.08" visible="pin" length="middle"/>
<text x="2.54" y="10.16" size="1.778" layer="94">&gt;NAME</text>
<text x="2.54" y="-12.7" size="1.778" layer="94">&gt;VALUE</text>
</symbol>
<symbol name="PEC11R-4215K-S0012">
<wire x1="-7.62" y1="5.08" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<pin name="A" x="-12.7" y="2.54" visible="pin" length="middle"/>
<pin name="C" x="-12.7" y="0" visible="pin" length="middle"/>
<pin name="B" x="-12.7" y="-2.54" visible="pin" length="middle"/>
<pin name="SW1" x="12.7" y="2.54" visible="pin" length="middle" rot="R180"/>
<pin name="SW2" x="12.7" y="0" visible="pin" length="middle" rot="R180"/>
<text x="-7.62" y="7.62" size="1.778" layer="94">&gt;NAME</text>
<text x="-7.62" y="-7.62" size="1.778" layer="94">&gt;VALUE</text>
</symbol>
<symbol name="PINHDR-2X6">
<wire x1="-6.35" y1="-10.16" x2="8.89" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="8.89" y1="-10.16" x2="8.89" y2="7.62" width="0.4064" layer="94"/>
<wire x1="8.89" y1="7.62" x2="-6.35" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="7.62" x2="-6.35" y2="-10.16" width="0.4064" layer="94"/>
<text x="-6.35" y="8.255" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="7" x="5.08" y="5.08" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="2" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="5.08" y="2.54" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="3" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="9" x="5.08" y="0" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="4" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="10" x="5.08" y="-2.54" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="5" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="11" x="5.08" y="-5.08" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="6" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="12" x="5.08" y="-7.62" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
</symbol>
<symbol name="SN74LVC4245APWR">
<pin name="A7" x="-15.24" y="-10.16" visible="pin" length="middle"/>
<pin name="A6" x="-15.24" y="-7.62" visible="pin" length="middle"/>
<pin name="A5" x="-15.24" y="-5.08" visible="pin" length="middle"/>
<pin name="A4" x="-15.24" y="-2.54" visible="pin" length="middle"/>
<pin name="A3" x="-15.24" y="0" visible="pin" length="middle"/>
<pin name="A2" x="-15.24" y="2.54" visible="pin" length="middle"/>
<pin name="A1" x="-15.24" y="5.08" visible="pin" length="middle"/>
<pin name="A8" x="-15.24" y="-12.7" visible="pin" length="middle"/>
<pin name="GND0" x="-2.54" y="-30.48" visible="pin" length="middle" rot="R90"/>
<pin name="GND2" x="2.54" y="-30.48" visible="pin" length="middle" rot="R90"/>
<pin name="GND1" x="0" y="-30.48" visible="pin" length="middle" rot="R90"/>
<pin name="DIR" x="-15.24" y="15.24" visible="pin" length="middle"/>
<pin name="OE" x="-15.24" y="12.7" visible="pin" length="middle" function="dot"/>
<pin name="VCCB0" x="5.08" y="30.48" visible="pin" length="middle" rot="R270"/>
<pin name="VCCB1" x="2.54" y="30.48" visible="pin" length="middle" rot="R270"/>
<pin name="VCCA" x="-5.08" y="30.48" visible="pin" length="middle" rot="R270"/>
<pin name="B3" x="15.24" y="0" visible="pin" length="middle" rot="R180"/>
<pin name="B4" x="15.24" y="-2.54" visible="pin" length="middle" rot="R180"/>
<pin name="B5" x="15.24" y="-5.08" visible="pin" length="middle" rot="R180"/>
<pin name="B6" x="15.24" y="-7.62" visible="pin" length="middle" rot="R180"/>
<pin name="B7" x="15.24" y="-10.16" visible="pin" length="middle" rot="R180"/>
<pin name="B8" x="15.24" y="-12.7" visible="pin" length="middle" rot="R180"/>
<pin name="B2" x="15.24" y="2.54" visible="pin" length="middle" rot="R180"/>
<pin name="B1" x="15.24" y="5.08" visible="pin" length="middle" rot="R180"/>
<wire x1="-10.16" y1="25.4" x2="10.16" y2="25.4" width="0.254" layer="94"/>
<wire x1="10.16" y1="25.4" x2="10.16" y2="-25.4" width="0.254" layer="94"/>
<wire x1="10.16" y1="-25.4" x2="-10.16" y2="-25.4" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-25.4" x2="-10.16" y2="25.4" width="0.254" layer="94"/>
<text x="7.62" y="27.94" size="1.778" layer="94">&gt;NAME</text>
<text x="5.08" y="-27.94" size="1.778" layer="94">&gt;VALUE</text>
</symbol>
<symbol name="LM2776">
<wire x1="-10.16" y1="7.62" x2="10.16" y2="7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="7.62" x2="10.16" y2="-10.16" width="0.254" layer="94"/>
<wire x1="10.16" y1="-10.16" x2="-10.16" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-10.16" x2="-10.16" y2="7.62" width="0.254" layer="94"/>
<pin name="VOUT" x="15.24" y="0" visible="pin" length="middle" rot="R180"/>
<pin name="GND" x="0" y="-15.24" visible="pin" length="middle" rot="R90"/>
<pin name="EN" x="-15.24" y="2.54" visible="pin" length="middle"/>
<pin name="C+" x="-15.24" y="-2.54" visible="pin" length="middle"/>
<pin name="VIN" x="0" y="12.7" visible="pin" length="middle" rot="R270"/>
<pin name="C-" x="-15.24" y="-5.08" visible="pin" length="middle"/>
<text x="2.54" y="10.16" size="1.778" layer="94">&gt;NAME</text>
<text x="2.54" y="-12.7" size="1.778" layer="94">&gt;VALUE</text>
</symbol>
<symbol name="CAP">
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<text x="1.524" y="0.381" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-4.699" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<text x="0" y="2.54" size="0.4064" layer="99" align="center">SpiceOrder 1</text>
<text x="0" y="-5.08" size="0.4064" layer="99" align="center">SpiceOrder 2</text>
</symbol>
<symbol name="RES">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.2032" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.2032" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.2032" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="-3.3V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="-3.3V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="+3.3V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+3.3V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="NHD-12864MZ-FSW-GBW-L" prefix="JP" uservalue="yes">
<description>&lt;b&gt;Newhaven Display 128x64 Graphical LCD &lt;/b&gt;</description>
<gates>
<gate name="A" symbol="NHD-12864MZ-FSW-GBW-L" x="0" y="0"/>
</gates>
<devices>
<device name="1X20_2MM" package="NHD-12864MZ-FSW-GBW-L">
<connects>
<connect gate="A" pin="CS1B" pad="CS1B"/>
<connect gate="A" pin="CS2B" pad="CS2B"/>
<connect gate="A" pin="DB0" pad="DB0"/>
<connect gate="A" pin="DB1" pad="DB1"/>
<connect gate="A" pin="DB2" pad="DB2"/>
<connect gate="A" pin="DB3" pad="DB3"/>
<connect gate="A" pin="DB4" pad="DB4"/>
<connect gate="A" pin="DB5" pad="DB5"/>
<connect gate="A" pin="DB6" pad="DB6"/>
<connect gate="A" pin="DB7" pad="DB7"/>
<connect gate="A" pin="E" pad="E"/>
<connect gate="A" pin="LED+" pad="LED+"/>
<connect gate="A" pin="LED-" pad="LED-"/>
<connect gate="A" pin="R/W" pad="RW"/>
<connect gate="A" pin="RS" pad="RS"/>
<connect gate="A" pin="RST" pad="RST"/>
<connect gate="A" pin="V0" pad="V0"/>
<connect gate="A" pin="VDD" pad="VDD"/>
<connect gate="A" pin="VSS0" pad="VSS0"/>
<connect gate="A" pin="VSS1" pad="VSS1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LTC1754-5">
<description>Linear Technology 5v Charge Pump</description>
<gates>
<gate name="G$1" symbol="LTC1754-5" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT23-6">
<connects>
<connect gate="G$1" pin="C+" pad="6"/>
<connect gate="G$1" pin="C-" pad="4"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="SHDN" pad="3"/>
<connect gate="G$1" pin="VIN" pad="5"/>
<connect gate="G$1" pin="VOUT" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PEC11R-4215K-S0012" prefix="SW">
<description>Bourns Quadrature Rotary Encoder</description>
<gates>
<gate name="&gt;NAME" symbol="PEC11R-4215K-S0012" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PEC11R-4XXXF-SXXXX">
<connects>
<connect gate="&gt;NAME" pin="A" pad="A"/>
<connect gate="&gt;NAME" pin="B" pad="B"/>
<connect gate="&gt;NAME" pin="C" pad="C"/>
<connect gate="&gt;NAME" pin="SW1" pad="SW1"/>
<connect gate="&gt;NAME" pin="SW2" pad="SW2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PINHDR-2X6" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHDR-2X6" x="0" y="0"/>
</gates>
<devices>
<device name="/90" package="2X06/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SN74LVC4245APWR">
<gates>
<gate name="G$1" symbol="SN74LVC4245APWR" x="7.62" y="-5.08"/>
</gates>
<devices>
<device name="" package="TSSOP24">
<connects>
<connect gate="G$1" pin="A1" pad="3"/>
<connect gate="G$1" pin="A2" pad="4"/>
<connect gate="G$1" pin="A3" pad="5"/>
<connect gate="G$1" pin="A4" pad="6"/>
<connect gate="G$1" pin="A5" pad="7"/>
<connect gate="G$1" pin="A6" pad="8"/>
<connect gate="G$1" pin="A7" pad="9"/>
<connect gate="G$1" pin="A8" pad="10"/>
<connect gate="G$1" pin="B1" pad="21"/>
<connect gate="G$1" pin="B2" pad="20"/>
<connect gate="G$1" pin="B3" pad="19"/>
<connect gate="G$1" pin="B4" pad="18"/>
<connect gate="G$1" pin="B5" pad="17"/>
<connect gate="G$1" pin="B6" pad="16"/>
<connect gate="G$1" pin="B7" pad="15"/>
<connect gate="G$1" pin="B8" pad="14"/>
<connect gate="G$1" pin="DIR" pad="2"/>
<connect gate="G$1" pin="GND0" pad="11"/>
<connect gate="G$1" pin="GND1" pad="12"/>
<connect gate="G$1" pin="GND2" pad="13"/>
<connect gate="G$1" pin="OE" pad="22"/>
<connect gate="G$1" pin="VCCA" pad="1"/>
<connect gate="G$1" pin="VCCB0" pad="23"/>
<connect gate="G$1" pin="VCCB1" pad="24"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LM2776">
<gates>
<gate name="G$1" symbol="LM2776" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT23-6">
<connects>
<connect gate="G$1" pin="C+" pad="5"/>
<connect gate="G$1" pin="C-" pad="6"/>
<connect gate="G$1" pin="EN" pad="4"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="VIN" pad="3"/>
<connect gate="G$1" pin="VOUT" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CAP" uservalue="yes">
<gates>
<gate name="G$1" symbol="CAP" x="0" y="1.27"/>
</gates>
<devices>
<device name="C0402" package="C0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="C0802" package="C0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="CAPACITANCE" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RES" prefix="R" uservalue="yes">
<description>&lt;B&gt;RESISTOR&lt;/B&gt;, American symbol</description>
<gates>
<gate name="G$1" symbol="RES" x="0" y="0"/>
</gates>
<devices>
<device name="R0603" package="R0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+3.3V" prefix="+3.3V">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="+3.3V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="-3.3V" prefix="-3.3V">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="-3.3V" x="0" y="2.54"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="frames">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A3L-LOC">
<wire x1="288.29" y1="3.81" x2="342.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="342.265" y1="3.81" x2="373.38" y2="3.81" width="0.1016" layer="94"/>
<wire x1="373.38" y1="3.81" x2="383.54" y2="3.81" width="0.1016" layer="94"/>
<wire x1="383.54" y1="3.81" x2="383.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="383.54" y1="8.89" x2="383.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="383.54" y1="13.97" x2="383.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="383.54" y1="19.05" x2="383.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="288.29" y1="3.81" x2="288.29" y2="24.13" width="0.1016" layer="94"/>
<wire x1="288.29" y1="24.13" x2="342.265" y2="24.13" width="0.1016" layer="94"/>
<wire x1="342.265" y1="24.13" x2="383.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="373.38" y1="3.81" x2="373.38" y2="8.89" width="0.1016" layer="94"/>
<wire x1="373.38" y1="8.89" x2="383.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="373.38" y1="8.89" x2="342.265" y2="8.89" width="0.1016" layer="94"/>
<wire x1="342.265" y1="8.89" x2="342.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="342.265" y1="8.89" x2="342.265" y2="13.97" width="0.1016" layer="94"/>
<wire x1="342.265" y1="13.97" x2="383.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="342.265" y1="13.97" x2="342.265" y2="19.05" width="0.1016" layer="94"/>
<wire x1="342.265" y1="19.05" x2="383.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="342.265" y1="19.05" x2="342.265" y2="24.13" width="0.1016" layer="94"/>
<text x="344.17" y="15.24" size="2.54" layer="94">&gt;DRAWING_NAME</text>
<text x="344.17" y="10.16" size="2.286" layer="94">&gt;LAST_DATE_TIME</text>
<text x="357.505" y="5.08" size="2.54" layer="94">&gt;SHEET</text>
<text x="343.916" y="4.953" size="2.54" layer="94">Sheet:</text>
<frame x1="0" y1="0" x2="387.35" y2="260.35" columns="8" rows="5" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A3L-LOC" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A3, landscape with location and doc. field</description>
<gates>
<gate name="G$1" symbol="A3L-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="+5V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X04">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-5.1562" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
</package>
<package name="1X04/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-5.08" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-5.715" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="6.985" y="-4.445" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-4.191" y1="0.635" x2="-3.429" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="3.429" y1="0.635" x2="4.191" y2="1.143" layer="21"/>
<rectangle x1="-4.191" y1="-2.921" x2="-3.429" y2="-1.905" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
<rectangle x1="3.429" y1="-2.921" x2="4.191" y2="-1.905" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="PINHD4">
<wire x1="-6.35" y1="-5.08" x2="1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="1.27" y2="7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="7.62" x2="-6.35" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="7.62" x2="-6.35" y2="-5.08" width="0.4064" layer="94"/>
<text x="-6.35" y="8.255" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X4" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD4" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X04">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X04/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
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
<part name="LCD" library="pmodio" deviceset="NHD-12864MZ-FSW-GBW-L" device="1X20_2MM" value="NHD_128x64"/>
<part name="IC1" library="pmodio" deviceset="LTC1754-5" device=""/>
<part name="ENC1" library="pmodio" deviceset="PEC11R-4215K-S0012" device=""/>
<part name="JB" library="pmodio" deviceset="PINHDR-2X6" device="/90" value="JB_PmodHdr"/>
<part name="IC4" library="pmodio" deviceset="SN74LVC4245APWR" device=""/>
<part name="IC3" library="pmodio" deviceset="SN74LVC4245APWR" device=""/>
<part name="IC2" library="pmodio" deviceset="LM2776" device=""/>
<part name="FRAME1" library="frames" deviceset="A3L-LOC" device="" value="F"/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="P+1" library="supply1" deviceset="+5V" device=""/>
<part name="JA" library="pmodio" deviceset="PINHDR-2X6" device="/90" value="JA_PmodHdr"/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="GND6" library="supply1" deviceset="GND" device=""/>
<part name="P+2" library="supply1" deviceset="+5V" device=""/>
<part name="C1" library="pmodio" deviceset="CAP" device="C0402" value="2.2u"/>
<part name="C3" library="pmodio" deviceset="CAP" device="C0402" value="2.2u"/>
<part name="C2" library="pmodio" deviceset="CAP" device="C0402" value="1u"/>
<part name="C5" library="pmodio" deviceset="CAP" device="C0402" value="1u"/>
<part name="C4" library="pmodio" deviceset="CAP" device="C0802" value="10u"/>
<part name="C6" library="pmodio" deviceset="CAP" device="C0802" value="10u"/>
<part name="GND7" library="supply1" deviceset="GND" device=""/>
<part name="GND8" library="supply1" deviceset="GND" device=""/>
<part name="GND10" library="supply1" deviceset="GND" device=""/>
<part name="P+3" library="supply1" deviceset="+5V" device=""/>
<part name="GND11" library="supply1" deviceset="GND" device=""/>
<part name="P+4" library="supply1" deviceset="+5V" device=""/>
<part name="GND12" library="supply1" deviceset="GND" device=""/>
<part name="P+5" library="supply1" deviceset="+5V" device=""/>
<part name="GND13" library="supply1" deviceset="GND" device=""/>
<part name="GND14" library="supply1" deviceset="GND" device=""/>
<part name="GND15" library="supply1" deviceset="GND" device=""/>
<part name="R2" library="pmodio" deviceset="RES" device="R0603" value="4.7k"/>
<part name="R1" library="pmodio" deviceset="RES" device="R0603" value="4.7k"/>
<part name="R4" library="pmodio" deviceset="RES" device="R0603" value="4.7k"/>
<part name="R6" library="pmodio" deviceset="RES" device="R0603" value="4.7k"/>
<part name="R5" library="pmodio" deviceset="RES" device="R0603" value="4.7k"/>
<part name="R3" library="pmodio" deviceset="RES" device="R0603" value="4.7k"/>
<part name="GND16" library="supply1" deviceset="GND" device=""/>
<part name="GND17" library="supply1" deviceset="GND" device=""/>
<part name="P+6" library="supply1" deviceset="+5V" device=""/>
<part name="GND18" library="supply1" deviceset="GND" device=""/>
<part name="GND9" library="supply1" deviceset="GND" device=""/>
<part name="+3.3V1" library="pmodio" deviceset="+3.3V" device=""/>
<part name="+3.3V2" library="pmodio" deviceset="+3.3V" device=""/>
<part name="+3.3V3" library="pmodio" deviceset="+3.3V" device=""/>
<part name="+3.3V4" library="pmodio" deviceset="+3.3V" device=""/>
<part name="+3.3V5" library="pmodio" deviceset="+3.3V" device=""/>
<part name="+3.3V6" library="pmodio" deviceset="+3.3V" device=""/>
<part name="+3.3V7" library="pmodio" deviceset="+3.3V" device=""/>
<part name="+3.3V8" library="pmodio" deviceset="+3.3V" device=""/>
<part name="+3.3V9" library="pmodio" deviceset="+3.3V" device=""/>
<part name="+3.3V10" library="pmodio" deviceset="+3.3V" device=""/>
<part name="-3.3V1" library="pmodio" deviceset="-3.3V" device=""/>
<part name="-3.3V2" library="pmodio" deviceset="-3.3V" device=""/>
<part name="-3.3V3" library="pmodio" deviceset="-3.3V" device=""/>
<part name="GND19" library="supply1" deviceset="GND" device=""/>
<part name="JP2" library="pinhead" deviceset="PINHD-1X4" device="" value="TP"/>
<part name="R7" library="pmodio" deviceset="RES" device="R0603" value="2.2k"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="144.78" y="-68.58" size="1.778" layer="97">Project: PMODIO
Author: Scott Lawson</text>
<text x="-132.08" y="111.76" size="2.54" layer="97">Voltage Inverter</text>
<text x="-73.66" y="111.76" size="2.54" layer="97">Charge Pump 
Voltage Booster</text>
<wire x1="-144.78" y1="162.56" x2="-144.78" y2="83.82" width="0.1524" layer="97"/>
<wire x1="-144.78" y1="83.82" x2="-12.7" y2="83.82" width="0.1524" layer="97"/>
<wire x1="-12.7" y1="83.82" x2="-12.7" y2="162.56" width="0.1524" layer="97"/>
<wire x1="-12.7" y1="162.56" x2="-144.78" y2="162.56" width="0.1524" layer="97"/>
<text x="-86.36" y="86.36" size="5.08" layer="97">Power</text>
<wire x1="167.64" y1="83.82" x2="167.64" y2="-48.26" width="0.1524" layer="97"/>
<wire x1="167.64" y1="-48.26" x2="223.52" y2="-48.26" width="0.1524" layer="97"/>
<wire x1="223.52" y1="-48.26" x2="223.52" y2="83.82" width="0.1524" layer="97"/>
<wire x1="223.52" y1="83.82" x2="167.64" y2="83.82" width="0.1524" layer="97"/>
<text x="177.8" y="76.2" size="5.08" layer="97">128x64 LCD</text>
<wire x1="160.02" y1="116.84" x2="160.02" y2="-48.26" width="0.1524" layer="97"/>
<wire x1="160.02" y1="-48.26" x2="76.2" y2="-48.26" width="0.1524" layer="97"/>
<wire x1="76.2" y1="-48.26" x2="76.2" y2="116.84" width="0.1524" layer="97"/>
<wire x1="76.2" y1="116.84" x2="160.02" y2="116.84" width="0.1524" layer="97"/>
<text x="96.52" y="101.6" size="5.08" layer="97">3.3v -&gt; 5v
Level Shifters</text>
<wire x1="58.42" y1="-48.26" x2="58.42" y2="101.6" width="0.1524" layer="97"/>
<wire x1="58.42" y1="101.6" x2="2.54" y2="101.6" width="0.1524" layer="97"/>
<wire x1="2.54" y1="101.6" x2="2.54" y2="-48.26" width="0.1524" layer="97"/>
<wire x1="2.54" y1="-48.26" x2="58.42" y2="-48.26" width="0.1524" layer="97"/>
<text x="20.32" y="86.36" size="5.08" layer="97">PMOD
Headers</text>
<wire x1="-20.32" y1="-48.26" x2="-20.32" y2="40.64" width="0.1524" layer="97"/>
<wire x1="-20.32" y1="40.64" x2="-121.92" y2="40.64" width="0.1524" layer="97"/>
<wire x1="-121.92" y1="40.64" x2="-121.92" y2="-48.26" width="0.1524" layer="97"/>
<wire x1="-121.92" y1="-48.26" x2="-20.32" y2="-48.26" width="0.1524" layer="97"/>
<text x="-93.98" y="-45.72" size="5.08" layer="97">Rotary Encoder</text>
<wire x1="-5.08" y1="162.56" x2="48.26" y2="162.56" width="0.1524" layer="97"/>
<wire x1="48.26" y1="162.56" x2="48.26" y2="129.54" width="0.1524" layer="97"/>
<wire x1="48.26" y1="129.54" x2="-5.08" y2="129.54" width="0.1524" layer="97"/>
<wire x1="-5.08" y1="129.54" x2="-5.08" y2="162.56" width="0.1524" layer="97"/>
<text x="5.08" y="154.94" size="5.08" layer="97">Test Points</text>
</plain>
<instances>
<instance part="LCD" gate="A" x="213.36" y="15.24"/>
<instance part="IC1" gate="G$1" x="-45.72" y="132.08"/>
<instance part="ENC1" gate="&gt;NAME" x="-93.98" y="5.08" rot="MR0"/>
<instance part="JB" gate="A" x="35.56" y="66.04"/>
<instance part="IC4" gate="G$1" x="129.54" y="58.42" rot="MR0"/>
<instance part="IC3" gate="G$1" x="101.6" y="0" rot="MR0"/>
<instance part="IC2" gate="G$1" x="-106.68" y="132.08"/>
<instance part="FRAME1" gate="G$1" x="-157.48" y="-81.28"/>
<instance part="GND1" gate="1" x="22.86" y="58.42"/>
<instance part="P+1" gate="1" x="-27.94" y="137.16"/>
<instance part="JA" gate="A" x="38.1" y="-2.54" rot="MR0"/>
<instance part="GND2" gate="1" x="50.8" y="-10.16"/>
<instance part="GND3" gate="1" x="-106.68" y="109.22"/>
<instance part="GND4" gate="1" x="-45.72" y="109.22"/>
<instance part="GND5" gate="1" x="101.6" y="-38.1"/>
<instance part="GND6" gate="1" x="129.54" y="20.32"/>
<instance part="P+2" gate="1" x="106.68" y="38.1"/>
<instance part="C1" gate="G$1" x="-132.08" y="149.86" rot="R270"/>
<instance part="C3" gate="G$1" x="-88.9" y="127"/>
<instance part="C2" gate="G$1" x="-132.08" y="129.54"/>
<instance part="C5" gate="G$1" x="-71.12" y="129.54"/>
<instance part="C4" gate="G$1" x="-71.12" y="149.86" rot="R90"/>
<instance part="C6" gate="G$1" x="-27.94" y="127"/>
<instance part="GND7" gate="1" x="-139.7" y="139.7"/>
<instance part="GND8" gate="1" x="-76.2" y="144.78"/>
<instance part="GND10" gate="1" x="119.38" y="10.16"/>
<instance part="P+3" gate="1" x="134.62" y="99.06"/>
<instance part="GND11" gate="1" x="200.66" y="-38.1"/>
<instance part="P+4" gate="1" x="195.58" y="63.5"/>
<instance part="GND12" gate="1" x="175.26" y="53.34"/>
<instance part="P+5" gate="1" x="195.58" y="-25.4"/>
<instance part="GND13" gate="1" x="119.38" y="-17.78"/>
<instance part="GND14" gate="1" x="83.82" y="-17.78"/>
<instance part="GND15" gate="1" x="-78.74" y="-27.94"/>
<instance part="R2" gate="G$1" x="-40.64" y="2.54"/>
<instance part="R1" gate="G$1" x="-40.64" y="10.16"/>
<instance part="R4" gate="G$1" x="-68.58" y="20.32" rot="R90"/>
<instance part="R6" gate="G$1" x="-68.58" y="-12.7" rot="R270"/>
<instance part="R5" gate="G$1" x="-60.96" y="20.32" rot="R90"/>
<instance part="R3" gate="G$1" x="-40.64" y="-5.08"/>
<instance part="GND16" gate="1" x="22.86" y="-10.16"/>
<instance part="GND17" gate="1" x="50.8" y="58.42"/>
<instance part="P+6" gate="1" x="10.16" y="152.4"/>
<instance part="GND18" gate="1" x="25.4" y="147.32"/>
<instance part="GND9" gate="1" x="147.32" y="68.58"/>
<instance part="+3.3V1" gate="G$1" x="124.46" y="96.52"/>
<instance part="+3.3V2" gate="G$1" x="96.52" y="38.1"/>
<instance part="+3.3V3" gate="G$1" x="25.4" y="-17.78"/>
<instance part="+3.3V4" gate="G$1" x="43.18" y="-17.78"/>
<instance part="+3.3V5" gate="G$1" x="-60.96" y="35.56"/>
<instance part="+3.3V6" gate="G$1" x="25.4" y="48.26"/>
<instance part="+3.3V7" gate="G$1" x="43.18" y="48.26"/>
<instance part="+3.3V8" gate="G$1" x="-45.72" y="157.48"/>
<instance part="+3.3V9" gate="G$1" x="-106.68" y="157.48"/>
<instance part="+3.3V10" gate="G$1" x="17.78" y="152.4"/>
<instance part="-3.3V1" gate="G$1" x="33.02" y="152.4"/>
<instance part="-3.3V2" gate="G$1" x="187.96" y="53.34"/>
<instance part="-3.3V3" gate="G$1" x="-88.9" y="139.7"/>
<instance part="GND19" gate="1" x="195.58" y="-15.24"/>
<instance part="JP2" gate="A" x="20.32" y="134.62" rot="R270"/>
<instance part="R7" gate="G$1" x="195.58" y="50.8"/>
</instances>
<busses>
<bus name="DB_5V[0..7]">
<segment>
<wire x1="147.32" y1="63.5" x2="147.32" y2="45.72" width="0.762" layer="92"/>
<wire x1="200.66" y1="45.72" x2="200.66" y2="10.16" width="0.762" layer="92"/>
<wire x1="147.32" y1="45.72" x2="200.66" y2="45.72" width="0.762" layer="92"/>
</segment>
</bus>
<bus name="DB_3.3V[0..7]">
<segment>
<wire x1="111.76" y1="63.5" x2="48.26" y2="63.5" width="0.762" layer="92"/>
<wire x1="48.26" y1="63.5" x2="48.26" y2="78.74" width="0.762" layer="92"/>
<wire x1="48.26" y1="78.74" x2="25.4" y2="78.74" width="0.762" layer="92"/>
<wire x1="25.4" y1="78.74" x2="25.4" y2="63.5" width="0.762" layer="92"/>
<wire x1="111.76" y1="63.5" x2="111.76" y2="45.72" width="0.762" layer="92"/>
</segment>
</bus>
<bus name="CNTLB_5V[0..4]">
<segment>
<wire x1="119.38" y1="-5.08" x2="119.38" y2="5.08" width="0.762" layer="92"/>
<wire x1="119.38" y1="5.08" x2="200.66" y2="5.08" width="0.762" layer="92"/>
<wire x1="200.66" y1="5.08" x2="200.66" y2="-20.32" width="0.762" layer="92"/>
</segment>
</bus>
<bus name="CNTLB_3.3V[0..4]">
<segment>
<wire x1="83.82" y1="-5.08" x2="83.82" y2="5.08" width="0.762" layer="92"/>
<wire x1="83.82" y1="5.08" x2="48.26" y2="5.08" width="0.762" layer="92"/>
<wire x1="48.26" y1="5.08" x2="48.26" y2="-5.08" width="0.762" layer="92"/>
<wire x1="48.26" y1="5.08" x2="48.26" y2="10.16" width="0.762" layer="92"/>
</segment>
</bus>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="GND"/>
<pinref part="GND4" gate="1" pin="GND"/>
<wire x1="-45.72" y1="116.84" x2="-45.72" y2="114.3" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="2"/>
<wire x1="-45.72" y1="114.3" x2="-45.72" y2="111.76" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="121.92" x2="-27.94" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="114.3" x2="-45.72" y2="114.3" width="0.1524" layer="91"/>
<junction x="-45.72" y="114.3"/>
</segment>
<segment>
<pinref part="IC2" gate="G$1" pin="GND"/>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="-106.68" y1="116.84" x2="-106.68" y2="114.3" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="2"/>
<wire x1="-106.68" y1="114.3" x2="-106.68" y2="111.76" width="0.1524" layer="91"/>
<wire x1="-88.9" y1="121.92" x2="-88.9" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-88.9" y1="114.3" x2="-106.68" y2="114.3" width="0.1524" layer="91"/>
<junction x="-106.68" y="114.3"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="GND1"/>
<pinref part="GND6" gate="1" pin="GND"/>
<wire x1="129.54" y1="27.94" x2="129.54" y2="25.4" width="0.1524" layer="91"/>
<pinref part="IC4" gate="G$1" pin="GND2"/>
<wire x1="129.54" y1="25.4" x2="129.54" y2="22.86" width="0.1524" layer="91"/>
<wire x1="127" y1="27.94" x2="127" y2="25.4" width="0.1524" layer="91"/>
<wire x1="127" y1="25.4" x2="129.54" y2="25.4" width="0.1524" layer="91"/>
<pinref part="IC4" gate="G$1" pin="GND0"/>
<wire x1="132.08" y1="27.94" x2="132.08" y2="25.4" width="0.1524" layer="91"/>
<wire x1="132.08" y1="25.4" x2="129.54" y2="25.4" width="0.1524" layer="91"/>
<junction x="129.54" y="25.4"/>
</segment>
<segment>
<pinref part="GND5" gate="1" pin="GND"/>
<pinref part="IC3" gate="G$1" pin="GND1"/>
<wire x1="101.6" y1="-35.56" x2="101.6" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="GND2"/>
<wire x1="101.6" y1="-33.02" x2="101.6" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-30.48" x2="99.06" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-33.02" x2="101.6" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="GND0"/>
<wire x1="104.14" y1="-30.48" x2="104.14" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-33.02" x2="101.6" y2="-33.02" width="0.1524" layer="91"/>
<junction x="101.6" y="-33.02"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="OE"/>
<pinref part="GND10" gate="1" pin="GND"/>
<wire x1="116.84" y1="12.7" x2="119.38" y2="12.7" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="DIR"/>
<wire x1="116.84" y1="15.24" x2="119.38" y2="15.24" width="0.1524" layer="91"/>
<wire x1="119.38" y1="15.24" x2="119.38" y2="12.7" width="0.1524" layer="91"/>
<junction x="119.38" y="12.7"/>
</segment>
<segment>
<pinref part="LCD" gate="A" pin="LED-"/>
<pinref part="GND11" gate="1" pin="GND"/>
<wire x1="208.28" y1="-35.56" x2="200.66" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="LCD" gate="A" pin="VSS1"/>
<wire x1="208.28" y1="-25.4" x2="200.66" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="200.66" y1="-25.4" x2="200.66" y2="-35.56" width="0.1524" layer="91"/>
<junction x="200.66" y="-35.56"/>
</segment>
<segment>
<pinref part="GND14" gate="1" pin="GND"/>
<wire x1="83.82" y1="-7.62" x2="83.82" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="B6"/>
<wire x1="83.82" y1="-10.16" x2="83.82" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-12.7" x2="83.82" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-7.62" x2="83.82" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="B7"/>
<wire x1="86.36" y1="-10.16" x2="83.82" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="B8"/>
<wire x1="86.36" y1="-12.7" x2="83.82" y2="-12.7" width="0.1524" layer="91"/>
<junction x="83.82" y="-10.16"/>
<junction x="83.82" y="-12.7"/>
</segment>
<segment>
<pinref part="GND13" gate="1" pin="GND"/>
<wire x1="119.38" y1="-7.62" x2="119.38" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="A6"/>
<wire x1="119.38" y1="-10.16" x2="119.38" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="119.38" y1="-12.7" x2="119.38" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="116.84" y1="-7.62" x2="119.38" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="A7"/>
<wire x1="116.84" y1="-10.16" x2="119.38" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="A8"/>
<wire x1="116.84" y1="-12.7" x2="119.38" y2="-12.7" width="0.1524" layer="91"/>
<junction x="119.38" y="-12.7"/>
<junction x="119.38" y="-10.16"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="-137.16" y1="149.86" x2="-139.7" y2="149.86" width="0.1524" layer="91"/>
<pinref part="GND7" gate="1" pin="GND"/>
<wire x1="-139.7" y1="149.86" x2="-139.7" y2="142.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C4" gate="G$1" pin="1"/>
<wire x1="-73.66" y1="149.86" x2="-76.2" y2="149.86" width="0.1524" layer="91"/>
<pinref part="GND8" gate="1" pin="GND"/>
<wire x1="-76.2" y1="149.86" x2="-76.2" y2="147.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="ENC1" gate="&gt;NAME" pin="C"/>
<wire x1="-81.28" y1="5.08" x2="-78.74" y2="5.08" width="0.1524" layer="91"/>
<pinref part="GND15" gate="1" pin="GND"/>
<wire x1="-78.74" y1="5.08" x2="-78.74" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="2"/>
<wire x1="-78.74" y1="-17.78" x2="-78.74" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="-17.78" x2="-78.74" y2="-17.78" width="0.1524" layer="91"/>
<junction x="-78.74" y="-17.78"/>
</segment>
<segment>
<pinref part="JA" gate="A" pin="11"/>
<wire x1="22.86" y1="-7.62" x2="33.02" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="GND16" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="JA" gate="A" pin="5"/>
<wire x1="50.8" y1="-7.62" x2="40.64" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="GND2" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="JB" gate="A" pin="11"/>
<wire x1="40.64" y1="60.96" x2="50.8" y2="60.96" width="0.1524" layer="91"/>
<pinref part="GND17" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="JB" gate="A" pin="5"/>
<wire x1="33.02" y1="60.96" x2="22.86" y2="60.96" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="147.32" y1="73.66" x2="147.32" y2="71.12" width="0.1524" layer="91"/>
<pinref part="GND9" gate="1" pin="GND"/>
<pinref part="IC4" gate="G$1" pin="DIR"/>
<wire x1="144.78" y1="73.66" x2="147.32" y2="73.66" width="0.1524" layer="91"/>
<pinref part="IC4" gate="G$1" pin="OE"/>
<wire x1="144.78" y1="71.12" x2="147.32" y2="71.12" width="0.1524" layer="91"/>
<junction x="147.32" y="71.12"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="2"/>
<wire x1="22.86" y1="137.16" x2="22.86" y2="152.4" width="0.1524" layer="91"/>
<wire x1="22.86" y1="152.4" x2="25.4" y2="152.4" width="0.1524" layer="91"/>
<pinref part="GND18" gate="1" pin="GND"/>
<wire x1="25.4" y1="152.4" x2="25.4" y2="149.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LCD" gate="A" pin="R/W"/>
<pinref part="GND19" gate="1" pin="GND"/>
<wire x1="208.28" y1="-10.16" x2="195.58" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="195.58" y1="-10.16" x2="195.58" y2="-12.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LCD" gate="A" pin="VSS0"/>
<pinref part="GND12" gate="1" pin="GND"/>
<wire x1="208.28" y1="55.88" x2="175.26" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="VCCA"/>
<wire x1="106.68" y1="30.48" x2="106.68" y2="35.56" width="0.1524" layer="91"/>
<pinref part="P+2" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="VOUT"/>
<pinref part="P+1" gate="1" pin="+5V"/>
<wire x1="-30.48" y1="132.08" x2="-27.94" y2="132.08" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="132.08" x2="-27.94" y2="134.62" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="1"/>
<wire x1="-27.94" y1="129.54" x2="-27.94" y2="132.08" width="0.1524" layer="91"/>
<junction x="-27.94" y="132.08"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="VCCA"/>
<pinref part="P+3" gate="1" pin="+5V"/>
<wire x1="134.62" y1="88.9" x2="134.62" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LCD" gate="A" pin="VDD"/>
<pinref part="P+4" gate="1" pin="+5V"/>
<wire x1="208.28" y1="60.96" x2="195.58" y2="60.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LCD" gate="A" pin="LED+"/>
<wire x1="208.28" y1="-30.48" x2="195.58" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="P+5" gate="1" pin="+5V"/>
<wire x1="195.58" y1="-30.48" x2="195.58" y2="-27.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="4"/>
<wire x1="17.78" y1="137.16" x2="17.78" y2="142.24" width="0.1524" layer="91"/>
<pinref part="P+6" gate="1" pin="+5V"/>
<wire x1="17.78" y1="142.24" x2="10.16" y2="142.24" width="0.1524" layer="91"/>
<wire x1="10.16" y1="142.24" x2="10.16" y2="149.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="C+"/>
<wire x1="-121.92" y1="129.54" x2="-124.46" y2="129.54" width="0.1524" layer="91"/>
<wire x1="-124.46" y1="129.54" x2="-124.46" y2="132.08" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="-124.46" y1="132.08" x2="-132.08" y2="132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="C-"/>
<wire x1="-121.92" y1="127" x2="-124.46" y2="127" width="0.1524" layer="91"/>
<wire x1="-124.46" y1="127" x2="-124.46" y2="124.46" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="-124.46" y1="124.46" x2="-132.08" y2="124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="C+"/>
<wire x1="-60.96" y1="129.54" x2="-63.5" y2="129.54" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="129.54" x2="-63.5" y2="132.08" width="0.1524" layer="91"/>
<pinref part="C5" gate="G$1" pin="1"/>
<wire x1="-63.5" y1="132.08" x2="-71.12" y2="132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="C-"/>
<wire x1="-60.96" y1="127" x2="-63.5" y2="127" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="127" x2="-63.5" y2="124.46" width="0.1524" layer="91"/>
<pinref part="C5" gate="G$1" pin="2"/>
<wire x1="-63.5" y1="124.46" x2="-71.12" y2="124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DB_5V0" class="0">
<segment>
<pinref part="LCD" gate="A" pin="DB0"/>
<wire x1="208.28" y1="45.72" x2="200.66" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="A1"/>
<wire x1="147.32" y1="63.5" x2="144.78" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DB_5V3" class="0">
<segment>
<pinref part="LCD" gate="A" pin="DB3"/>
<wire x1="208.28" y1="30.48" x2="200.66" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="A4"/>
<wire x1="147.32" y1="55.88" x2="144.78" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DB_5V7" class="0">
<segment>
<pinref part="LCD" gate="A" pin="DB7"/>
<wire x1="208.28" y1="10.16" x2="200.66" y2="10.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="A8"/>
<wire x1="147.32" y1="45.72" x2="144.78" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="ENC1" gate="&gt;NAME" pin="A"/>
<wire x1="-81.28" y1="7.62" x2="-68.58" y2="7.62" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="-68.58" y1="7.62" x2="-68.58" y2="15.24" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="-45.72" y1="10.16" x2="-53.34" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="10.16" x2="-53.34" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="7.62" x2="-68.58" y2="7.62" width="0.1524" layer="91"/>
<junction x="-68.58" y="7.62"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="ENC1" gate="&gt;NAME" pin="B"/>
<wire x1="-81.28" y1="2.54" x2="-60.96" y2="2.54" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="-60.96" y1="2.54" x2="-60.96" y2="15.24" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="-45.72" y1="2.54" x2="-60.96" y2="2.54" width="0.1524" layer="91"/>
<junction x="-60.96" y="2.54"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="ENC1" gate="&gt;NAME" pin="SW2"/>
<wire x1="-106.68" y1="5.08" x2="-114.3" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-114.3" y1="5.08" x2="-114.3" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-114.3" y1="-5.08" x2="-68.58" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="1"/>
<wire x1="-68.58" y1="-5.08" x2="-45.72" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="-5.08" x2="-68.58" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="1"/>
<junction x="-68.58" y="-5.08"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="-35.56" y1="10.16" x2="10.16" y2="10.16" width="0.1524" layer="91"/>
<wire x1="10.16" y1="10.16" x2="10.16" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="JA" gate="A" pin="10"/>
<wire x1="33.02" y1="-5.08" x2="10.16" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="-35.56" y1="-5.08" x2="5.08" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-5.08" x2="5.08" y2="0" width="0.1524" layer="91"/>
<pinref part="JA" gate="A" pin="8"/>
<wire x1="5.08" y1="0" x2="33.02" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CNTLB_5V0" class="0">
<segment>
<pinref part="LCD" gate="A" pin="CS2B"/>
<wire x1="208.28" y1="5.08" x2="200.66" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="A1"/>
<wire x1="116.84" y1="5.08" x2="119.38" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CNTLB_5V1" class="0">
<segment>
<pinref part="LCD" gate="A" pin="CS1B"/>
<wire x1="208.28" y1="0" x2="200.66" y2="0" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="A2"/>
<wire x1="116.84" y1="2.54" x2="119.38" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CNTLB_5V2" class="0">
<segment>
<pinref part="LCD" gate="A" pin="RST"/>
<wire x1="208.28" y1="-5.08" x2="200.66" y2="-5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="A3"/>
<wire x1="116.84" y1="0" x2="119.38" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CNTLB_5V3" class="0">
<segment>
<pinref part="LCD" gate="A" pin="RS"/>
<wire x1="208.28" y1="-15.24" x2="200.66" y2="-15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="A4"/>
<wire x1="116.84" y1="-2.54" x2="119.38" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CNTLB_5V4" class="0">
<segment>
<pinref part="LCD" gate="A" pin="E"/>
<wire x1="208.28" y1="-20.32" x2="200.66" y2="-20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="A5"/>
<wire x1="116.84" y1="-5.08" x2="119.38" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="-3.3V" class="0">
<segment>
<pinref part="C3" gate="G$1" pin="1"/>
<pinref part="-3.3V3" gate="G$1" pin="-3.3V"/>
<wire x1="-88.9" y1="129.54" x2="-88.9" y2="132.08" width="0.1524" layer="91"/>
<wire x1="-88.9" y1="137.16" x2="-88.9" y2="132.08" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="VOUT"/>
<wire x1="-88.9" y1="132.08" x2="-91.44" y2="132.08" width="0.1524" layer="91"/>
<junction x="-88.9" y="132.08"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="1"/>
<wire x1="25.4" y1="137.16" x2="25.4" y2="142.24" width="0.1524" layer="91"/>
<pinref part="-3.3V1" gate="G$1" pin="-3.3V"/>
<wire x1="25.4" y1="142.24" x2="33.02" y2="142.24" width="0.1524" layer="91"/>
<wire x1="33.02" y1="142.24" x2="33.02" y2="149.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="-3.3V2" gate="G$1" pin="-3.3V"/>
<pinref part="R7" gate="G$1" pin="1"/>
<wire x1="187.96" y1="50.8" x2="190.5" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DB_3.3V7" class="0">
<segment>
<pinref part="JB" gate="A" pin="1"/>
<wire x1="33.02" y1="71.12" x2="25.4" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="B8"/>
<wire x1="111.76" y1="45.72" x2="114.3" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DB_3.3V6" class="0">
<segment>
<pinref part="JB" gate="A" pin="7"/>
<wire x1="40.64" y1="71.12" x2="48.26" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="B7"/>
<wire x1="111.76" y1="48.26" x2="114.3" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DB_3.3V5" class="0">
<segment>
<pinref part="JB" gate="A" pin="2"/>
<wire x1="33.02" y1="68.58" x2="25.4" y2="68.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="B6"/>
<wire x1="111.76" y1="50.8" x2="114.3" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DB_3.3V3" class="0">
<segment>
<pinref part="JB" gate="A" pin="3"/>
<wire x1="33.02" y1="66.04" x2="25.4" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="B4"/>
<wire x1="111.76" y1="55.88" x2="114.3" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DB_3.3V2" class="0">
<segment>
<pinref part="JB" gate="A" pin="9"/>
<wire x1="40.64" y1="66.04" x2="48.26" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="B3"/>
<wire x1="111.76" y1="58.42" x2="114.3" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DB_3.3V1" class="0">
<segment>
<pinref part="JB" gate="A" pin="4"/>
<wire x1="25.4" y1="63.5" x2="33.02" y2="63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="B2"/>
<wire x1="111.76" y1="60.96" x2="114.3" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DB_3.3V0" class="0">
<segment>
<pinref part="JB" gate="A" pin="10"/>
<wire x1="40.64" y1="63.5" x2="48.26" y2="63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="B1"/>
<wire x1="111.76" y1="63.5" x2="114.3" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="JA" gate="A" pin="9"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="-35.56" y1="2.54" x2="7.62" y2="2.54" width="0.1524" layer="91"/>
<wire x1="7.62" y1="2.54" x2="7.62" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="7.62" y1="-2.54" x2="33.02" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+3.3V" class="0">
<segment>
<pinref part="+3.3V9" gate="G$1" pin="+3.3V"/>
<pinref part="IC2" gate="G$1" pin="VIN"/>
<wire x1="-106.68" y1="154.94" x2="-106.68" y2="149.86" width="0.1524" layer="91"/>
<wire x1="-106.68" y1="144.78" x2="-106.68" y2="149.86" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="-106.68" y1="149.86" x2="-121.92" y2="149.86" width="0.1524" layer="91"/>
<wire x1="-129.54" y1="149.86" x2="-121.92" y2="149.86" width="0.1524" layer="91"/>
<pinref part="IC2" gate="G$1" pin="EN"/>
<wire x1="-121.92" y1="149.86" x2="-121.92" y2="134.62" width="0.1524" layer="91"/>
<junction x="-121.92" y="149.86"/>
<junction x="-106.68" y="149.86"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="VIN"/>
<pinref part="+3.3V8" gate="G$1" pin="+3.3V"/>
<wire x1="-45.72" y1="144.78" x2="-45.72" y2="149.86" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="154.94" x2="-45.72" y2="149.86" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="2"/>
<wire x1="-45.72" y1="149.86" x2="-63.5" y2="149.86" width="0.1524" layer="91"/>
<junction x="-45.72" y="149.86"/>
<pinref part="IC1" gate="G$1" pin="SHDN"/>
<wire x1="-63.5" y1="149.86" x2="-66.04" y2="149.86" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="134.62" x2="-63.5" y2="134.62" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="134.62" x2="-63.5" y2="149.86" width="0.1524" layer="91"/>
<junction x="-63.5" y="149.86"/>
</segment>
<segment>
<pinref part="+3.3V1" gate="G$1" pin="+3.3V"/>
<pinref part="IC4" gate="G$1" pin="VCCB0"/>
<wire x1="124.46" y1="93.98" x2="124.46" y2="91.44" width="0.1524" layer="91"/>
<pinref part="IC4" gate="G$1" pin="VCCB1"/>
<wire x1="124.46" y1="91.44" x2="124.46" y2="88.9" width="0.1524" layer="91"/>
<wire x1="127" y1="88.9" x2="127" y2="91.44" width="0.1524" layer="91"/>
<wire x1="127" y1="91.44" x2="124.46" y2="91.44" width="0.1524" layer="91"/>
<junction x="124.46" y="91.44"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="VCCB0"/>
<pinref part="+3.3V2" gate="G$1" pin="+3.3V"/>
<wire x1="96.52" y1="30.48" x2="96.52" y2="33.02" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="VCCB1"/>
<wire x1="96.52" y1="33.02" x2="96.52" y2="35.56" width="0.1524" layer="91"/>
<wire x1="99.06" y1="30.48" x2="99.06" y2="33.02" width="0.1524" layer="91"/>
<wire x1="99.06" y1="33.02" x2="96.52" y2="33.02" width="0.1524" layer="91"/>
<junction x="96.52" y="33.02"/>
</segment>
<segment>
<pinref part="JB" gate="A" pin="12"/>
<wire x1="40.64" y1="58.42" x2="45.72" y2="58.42" width="0.1524" layer="91"/>
<wire x1="45.72" y1="58.42" x2="45.72" y2="43.18" width="0.1524" layer="91"/>
<wire x1="45.72" y1="43.18" x2="43.18" y2="43.18" width="0.1524" layer="91"/>
<pinref part="+3.3V7" gate="G$1" pin="+3.3V"/>
<wire x1="43.18" y1="43.18" x2="43.18" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JB" gate="A" pin="6"/>
<wire x1="33.02" y1="58.42" x2="27.94" y2="58.42" width="0.1524" layer="91"/>
<wire x1="27.94" y1="58.42" x2="27.94" y2="43.18" width="0.1524" layer="91"/>
<wire x1="27.94" y1="43.18" x2="25.4" y2="43.18" width="0.1524" layer="91"/>
<wire x1="25.4" y1="43.18" x2="25.4" y2="45.72" width="0.1524" layer="91"/>
<pinref part="+3.3V6" gate="G$1" pin="+3.3V"/>
</segment>
<segment>
<pinref part="JA" gate="A" pin="12"/>
<wire x1="33.02" y1="-10.16" x2="27.94" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-10.16" x2="27.94" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-22.86" x2="25.4" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="+3.3V3" gate="G$1" pin="+3.3V"/>
<wire x1="25.4" y1="-22.86" x2="25.4" y2="-20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JA" gate="A" pin="6"/>
<wire x1="40.64" y1="-10.16" x2="45.72" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-10.16" x2="45.72" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-22.86" x2="43.18" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="+3.3V4" gate="G$1" pin="+3.3V"/>
<wire x1="43.18" y1="-22.86" x2="43.18" y2="-20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R5" gate="G$1" pin="2"/>
<pinref part="+3.3V5" gate="G$1" pin="+3.3V"/>
<wire x1="-60.96" y1="25.4" x2="-60.96" y2="27.94" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="-60.96" y1="27.94" x2="-60.96" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="25.4" x2="-68.58" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="27.94" x2="-60.96" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="27.94" x2="-114.3" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-114.3" y1="27.94" x2="-114.3" y2="7.62" width="0.1524" layer="91"/>
<pinref part="ENC1" gate="&gt;NAME" pin="SW1"/>
<wire x1="-114.3" y1="7.62" x2="-106.68" y2="7.62" width="0.1524" layer="91"/>
<junction x="-68.58" y="27.94"/>
<junction x="-60.96" y="27.94"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="3"/>
<wire x1="20.32" y1="137.16" x2="20.32" y2="144.78" width="0.1524" layer="91"/>
<pinref part="+3.3V10" gate="G$1" pin="+3.3V"/>
<wire x1="20.32" y1="144.78" x2="17.78" y2="144.78" width="0.1524" layer="91"/>
<wire x1="17.78" y1="144.78" x2="17.78" y2="149.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CNTLB_3.3V4" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="B5"/>
<wire x1="83.82" y1="-5.08" x2="86.36" y2="-5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JA" gate="A" pin="1"/>
<wire x1="48.26" y1="2.54" x2="40.64" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CNTLB_3.3V3" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="B4"/>
<wire x1="83.82" y1="-2.54" x2="86.36" y2="-2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="48.26" y1="10.16" x2="25.4" y2="10.16" width="0.1524" layer="91"/>
<wire x1="25.4" y1="10.16" x2="25.4" y2="2.54" width="0.1524" layer="91"/>
<pinref part="JA" gate="A" pin="7"/>
<wire x1="25.4" y1="2.54" x2="33.02" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CNTLB_3.3V2" class="0">
<segment>
<pinref part="JA" gate="A" pin="2"/>
<wire x1="48.26" y1="0" x2="40.64" y2="0" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="B3"/>
<wire x1="83.82" y1="0" x2="86.36" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CNTLB_3.3V0" class="0">
<segment>
<pinref part="JA" gate="A" pin="4"/>
<wire x1="48.26" y1="-5.08" x2="40.64" y2="-5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="B1"/>
<wire x1="83.82" y1="5.08" x2="86.36" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DB_5V4" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="A5"/>
<wire x1="147.32" y1="53.34" x2="144.78" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LCD" gate="A" pin="DB4"/>
<wire x1="208.28" y1="25.4" x2="200.66" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DB_5V5" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="A6"/>
<wire x1="147.32" y1="50.8" x2="144.78" y2="50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LCD" gate="A" pin="DB5"/>
<wire x1="208.28" y1="20.32" x2="200.66" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DB_5V6" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="A7"/>
<wire x1="147.32" y1="48.26" x2="144.78" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LCD" gate="A" pin="DB6"/>
<wire x1="208.28" y1="15.24" x2="200.66" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DB_3.3V4" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="B5"/>
<wire x1="111.76" y1="53.34" x2="114.3" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JB" gate="A" pin="8"/>
<wire x1="40.64" y1="68.58" x2="48.26" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DB_5V1" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="A2"/>
<wire x1="147.32" y1="60.96" x2="144.78" y2="60.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LCD" gate="A" pin="DB1"/>
<wire x1="208.28" y1="40.64" x2="200.66" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DB_5V2" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="A3"/>
<wire x1="147.32" y1="58.42" x2="144.78" y2="58.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LCD" gate="A" pin="DB2"/>
<wire x1="208.28" y1="35.56" x2="200.66" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CNTLB_3.3V1" class="0">
<segment>
<pinref part="JA" gate="A" pin="3"/>
<wire x1="48.26" y1="-2.54" x2="40.64" y2="-2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="B2"/>
<wire x1="83.82" y1="2.54" x2="86.36" y2="2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="R7" gate="G$1" pin="2"/>
<pinref part="LCD" gate="A" pin="V0"/>
<wire x1="200.66" y1="50.8" x2="208.28" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
</compatibility>
</eagle>
