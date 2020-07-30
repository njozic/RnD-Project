<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.7.0">
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
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
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
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="Smart Camera Powersupply">
<description>Smart Camera Powersupply Rev1.0 Components</description>
<packages>
<package name="470UF">
<circle x="0" y="0" radius="6.5" width="0.127" layer="21"/>
<pad name="P$1" x="-2.54" y="0" drill="0.7"/>
<pad name="P$2" x="2.54" y="0" drill="0.7"/>
<text x="0" y="7.62" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-8.89" size="1.27" layer="25" align="bottom-center">&gt;VALUE</text>
<text x="-2.54" y="1.905" size="1.27" layer="21" align="center">+</text>
<text x="2.54" y="1.905" size="1.27" layer="21" align="center">-</text>
</package>
<package name="1000UF">
<circle x="0" y="0" radius="6.5" width="0.127" layer="21"/>
<pad name="P$1" x="-2.54" y="0" drill="0.7"/>
<pad name="P$2" x="2.54" y="0" drill="0.7"/>
<text x="0" y="7.62" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-8.89" size="1.27" layer="25" align="bottom-center">&gt;VALUE</text>
<text x="-2.54" y="1.905" size="1.27" layer="21" align="center">+</text>
<text x="2.54" y="1.905" size="1.27" layer="21" align="center">-</text>
</package>
<package name="L_33UH">
<pad name="P$1" x="-2.54" y="0" drill="0.75" diameter="1.4224"/>
<pad name="P$2" x="2.54" y="0" drill="0.75" diameter="1.4224"/>
<circle x="0" y="0" radius="3.9" width="0.127" layer="21"/>
</package>
<package name="MBR340">
<pad name="P$1" x="7.5" y="0" drill="1.5" diameter="2.54"/>
<pad name="P$2" x="-7.5" y="0" drill="1.5" diameter="2.54"/>
<wire x1="4.75" y1="2.65" x2="-4.75" y2="2.65" width="0.127" layer="22"/>
<wire x1="-4.75" y1="-2.65" x2="3.25" y2="-2.65" width="0.127" layer="21"/>
<wire x1="3.25" y1="-2.65" x2="4.75" y2="-2.65" width="0.127" layer="21"/>
<wire x1="-4.75" y1="-2.65" x2="-4.75" y2="2.65" width="0.127" layer="21"/>
<wire x1="4.75" y1="2.65" x2="4.75" y2="-2.65" width="0.127" layer="21"/>
<wire x1="3.25" y1="2.65" x2="3.25" y2="-2.65" width="0.127" layer="21"/>
</package>
<package name="MIC4576">
<description>&lt;b&gt;TO-220&lt;/b&gt;&lt;p&gt; 5 lead</description>
<wire x1="4.953" y1="-4.445" x2="4.953" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-1.27" x2="-4.953" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-4.445" x2="-3.175" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-4.445" x2="0.635" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-4.445" x2="4.953" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-4.445" x2="-0.635" y2="-4.445" width="0.1524" layer="51"/>
<wire x1="0.635" y1="-4.445" x2="3.175" y2="-4.445" width="0.1524" layer="51"/>
<pad name="1" x="-3.81" y="-8.255" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-1.905" y="-4.445" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="0" y="-8.255" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="1.905" y="-4.445" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="3.81" y="-8.255" drill="1.016" shape="long" rot="R90"/>
<text x="-3.81" y="-11.049" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.572" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-5.08" y1="-1.27" x2="5.08" y2="0" layer="21"/>
<rectangle x1="-4.191" y1="-6.985" x2="-3.429" y2="-4.445" layer="21"/>
<rectangle x1="-4.191" y1="-8.382" x2="-3.429" y2="-6.985" layer="51"/>
<rectangle x1="-0.381" y1="-6.985" x2="0.381" y2="-4.445" layer="21"/>
<rectangle x1="3.429" y1="-6.985" x2="4.191" y2="-4.445" layer="21"/>
<rectangle x1="-0.381" y1="-8.382" x2="0.381" y2="-6.985" layer="51"/>
<rectangle x1="3.429" y1="-8.382" x2="4.191" y2="-6.985" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="470UF">
<wire x1="-1.524" y1="-0.889" x2="1.524" y2="-0.889" width="0.254" layer="94"/>
<wire x1="1.524" y1="-0.889" x2="1.524" y2="0" width="0.254" layer="94"/>
<wire x1="-1.524" y1="0" x2="-1.524" y2="-0.889" width="0.254" layer="94"/>
<wire x1="-1.524" y1="0" x2="1.524" y2="0" width="0.254" layer="94"/>
<text x="-0.5842" y="0.4064" size="1.27" layer="94" rot="R90">+</text>
<rectangle x1="-1.651" y1="-2.54" x2="1.651" y2="-1.651" layer="94"/>
<pin name="P$1" x="0" y="2.54" visible="off" length="short" direction="in" rot="R270"/>
<pin name="P$2" x="0" y="-5.08" visible="off" length="short" rot="R90"/>
<text x="2.54" y="0" size="1.27" layer="95">&gt;NAME</text>
<text x="2.54" y="-2.54" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="1000UF">
<wire x1="-1.524" y1="-0.889" x2="1.524" y2="-0.889" width="0.254" layer="94"/>
<wire x1="1.524" y1="-0.889" x2="1.524" y2="0" width="0.254" layer="94"/>
<wire x1="-1.524" y1="0" x2="-1.524" y2="-0.889" width="0.254" layer="94"/>
<wire x1="-1.524" y1="0" x2="1.524" y2="0" width="0.254" layer="94"/>
<text x="-0.5842" y="0.4064" size="1.27" layer="94" rot="R90">+</text>
<rectangle x1="-1.651" y1="-2.54" x2="1.651" y2="-1.651" layer="94"/>
<pin name="P$1" x="0" y="2.54" visible="off" length="short" direction="in" rot="R270"/>
<pin name="P$2" x="0" y="-5.08" visible="off" length="short" rot="R90"/>
<text x="2.54" y="0" size="1.27" layer="95">&gt;NAME</text>
<text x="2.54" y="-2.54" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="INDUCTOR">
<wire x1="-5.08" y1="0" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="5.08" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<rectangle x1="-1.016" y1="-3.556" x2="1.016" y2="3.556" layer="94" rot="R270"/>
<pin name="P$1" x="5.08" y="0" visible="off" length="point" rot="R270"/>
<pin name="P$2" x="-5.08" y="0" visible="off" length="point" rot="R270"/>
<text x="-5.08" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-3.556" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="DIODE_SCHOTTKY-DIODE-1">
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.905" y1="1.27" x2="1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="1.905" y1="1.27" x2="1.905" y2="1.016" width="0.254" layer="94"/>
<wire x1="1.27" y1="-1.27" x2="0.635" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0.635" y1="-1.016" x2="0.635" y2="-1.27" width="0.254" layer="94"/>
<pin name="A" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<pin name="C" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<text x="-5.08" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-3.81" size="1.778" layer="95">&gt;VALUE</text>
</symbol>
<symbol name="MIC4576">
<wire x1="-10.16" y1="7.62" x2="-10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-7.62" x2="10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="10.16" y2="7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="7.62" x2="-10.16" y2="7.62" width="0.254" layer="94"/>
<pin name="SW" x="12.7" y="5.08" length="short" rot="R180"/>
<pin name="FB" x="12.7" y="-2.54" length="short" rot="R180"/>
<pin name="SHDN" x="-12.7" y="5.08" length="short"/>
<pin name="VIN" x="-12.7" y="-2.54" length="short"/>
<pin name="GND" x="0" y="-10.16" length="short" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="470UF" prefix="C">
<description>&lt;b&gt;ELektrolyt Capacitor&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="470UF" x="0" y="0"/>
</gates>
<devices>
<device name="" package="470UF">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="1000UF" prefix="C">
<description>&lt;b&gt;ELektrolyt Capacitor&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="1000UF" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1000UF">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="L_33UH" prefix="L" uservalue="yes">
<gates>
<gate name="G$1" symbol="INDUCTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="L_33UH">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MBR340">
<gates>
<gate name="G$1" symbol="DIODE_SCHOTTKY-DIODE-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MBR340">
<connects>
<connect gate="G$1" pin="A" pad="P$1"/>
<connect gate="G$1" pin="C" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MIC4576">
<gates>
<gate name="G$1" symbol="MIC4576" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MIC4576">
<connects>
<connect gate="G$1" pin="FB" pad="4"/>
<connect gate="G$1" pin="GND" pad="3"/>
<connect gate="G$1" pin="SHDN" pad="5"/>
<connect gate="G$1" pin="SW" pad="2"/>
<connect gate="G$1" pin="VIN" pad="1"/>
</connects>
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
</devicesets>
</library>
<library name="con-lstb">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA04-1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
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
<text x="-5.08" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.223" y="-0.635" size="1.27" layer="21" ratio="10">1</text>
<text x="0.635" y="1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="5.334" y="-0.635" size="1.27" layer="21" ratio="10">4</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MA04-1">
<wire x1="3.81" y1="-7.62" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-7.62" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<text x="-1.27" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA04-1" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA04-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA04-1">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
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
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
<clearance class="0" value="0.508"/>
</class>
</classes>
<parts>
<part name="C1" library="Smart Camera Powersupply" deviceset="1000UF" device=""/>
<part name="C2" library="Smart Camera Powersupply" deviceset="470UF" device=""/>
<part name="L1" library="Smart Camera Powersupply" deviceset="L_33UH" device="" value="33uH"/>
<part name="U$1" library="Smart Camera Powersupply" deviceset="MBR340" device=""/>
<part name="U$2" library="Smart Camera Powersupply" deviceset="MIC4576" device=""/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="CONNECTOR" library="con-lstb" deviceset="MA04-1" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="C1" gate="G$1" x="81.28" y="58.42" smashed="yes">
<attribute name="VALUE" x="83.82" y="55.88" size="1.27" layer="96"/>
</instance>
<instance part="C2" gate="G$1" x="22.86" y="53.34" smashed="yes">
<attribute name="VALUE" x="25.4" y="50.8" size="1.27" layer="96"/>
</instance>
<instance part="L1" gate="G$1" x="71.12" y="66.04"/>
<instance part="U$1" gate="G$1" x="60.96" y="53.34" smashed="yes" rot="R90">
<attribute name="VALUE" x="64.77" y="48.26" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="U$2" gate="G$1" x="40.64" y="60.96"/>
<instance part="GND1" gate="1" x="40.64" y="40.64"/>
<instance part="CONNECTOR" gate="1" x="104.14" y="60.96"/>
<instance part="GND2" gate="1" x="116.84" y="50.8"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="SW"/>
<pinref part="L1" gate="G$1" pin="P$2"/>
<wire x1="53.34" y1="66.04" x2="60.96" y2="66.04" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="A"/>
<wire x1="60.96" y1="66.04" x2="66.04" y2="66.04" width="0.1524" layer="91"/>
<wire x1="60.96" y1="55.88" x2="60.96" y2="66.04" width="0.1524" layer="91"/>
<junction x="60.96" y="66.04"/>
</segment>
</net>
<net name="OUT" class="0">
<segment>
<pinref part="L1" gate="G$1" pin="P$1"/>
<pinref part="C1" gate="G$1" pin="P$1"/>
<wire x1="76.2" y1="66.04" x2="81.28" y2="66.04" width="0.1524" layer="91"/>
<wire x1="81.28" y1="66.04" x2="81.28" y2="60.96" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="FB"/>
<wire x1="53.34" y1="58.42" x2="73.66" y2="58.42" width="0.1524" layer="91"/>
<wire x1="73.66" y1="58.42" x2="81.28" y2="66.04" width="0.1524" layer="91"/>
<junction x="81.28" y="66.04"/>
<wire x1="81.28" y1="66.04" x2="86.36" y2="66.04" width="0.1524" layer="91"/>
<label x="86.36" y="66.04" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="CONNECTOR" gate="1" pin="2"/>
<wire x1="111.76" y1="58.42" x2="124.46" y2="58.42" width="0.1524" layer="91"/>
<wire x1="124.46" y1="58.42" x2="124.46" y2="53.34" width="0.1524" layer="91"/>
<label x="124.46" y="53.34" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="IN" class="0">
<segment>
<pinref part="C2" gate="G$1" pin="P$1"/>
<wire x1="22.86" y1="55.88" x2="22.86" y2="58.42" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="VIN"/>
<wire x1="22.86" y1="58.42" x2="27.94" y2="58.42" width="0.1524" layer="91"/>
<wire x1="22.86" y1="58.42" x2="17.78" y2="58.42" width="0.1524" layer="91"/>
<junction x="22.86" y="58.42"/>
<label x="17.78" y="58.42" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="CONNECTOR" gate="1" pin="4"/>
<wire x1="111.76" y1="63.5" x2="139.7" y2="63.5" width="0.1524" layer="91"/>
<wire x1="139.7" y1="63.5" x2="139.7" y2="53.34" width="0.1524" layer="91"/>
<label x="139.7" y="53.34" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="C1" gate="G$1" pin="P$2"/>
<wire x1="81.28" y1="53.34" x2="81.28" y2="45.72" width="0.1524" layer="91"/>
<wire x1="81.28" y1="45.72" x2="60.96" y2="45.72" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="GND"/>
<wire x1="60.96" y1="45.72" x2="40.64" y2="45.72" width="0.1524" layer="91"/>
<wire x1="40.64" y1="45.72" x2="40.64" y2="50.8" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="P$2"/>
<wire x1="22.86" y1="48.26" x2="22.86" y2="45.72" width="0.1524" layer="91"/>
<wire x1="22.86" y1="45.72" x2="40.64" y2="45.72" width="0.1524" layer="91"/>
<junction x="40.64" y="45.72"/>
<pinref part="U$1" gate="G$1" pin="C"/>
<wire x1="60.96" y1="50.8" x2="60.96" y2="45.72" width="0.1524" layer="91"/>
<junction x="60.96" y="45.72"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="40.64" y1="43.18" x2="40.64" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CONNECTOR" gate="1" pin="1"/>
<wire x1="111.76" y1="55.88" x2="116.84" y2="55.88" width="0.1524" layer="91"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="116.84" y1="55.88" x2="116.84" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SHDN" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="SHDN"/>
<wire x1="27.94" y1="66.04" x2="17.78" y2="66.04" width="0.1524" layer="91"/>
<label x="17.78" y="66.04" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="CONNECTOR" gate="1" pin="3"/>
<wire x1="111.76" y1="60.96" x2="132.08" y2="60.96" width="0.1524" layer="91"/>
<wire x1="132.08" y1="60.96" x2="132.08" y2="53.34" width="0.1524" layer="91"/>
<label x="132.08" y="53.34" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="113,1,110.14,61.1547,CONNECTOR,,,,,"/>
</errors>
</schematic>
</drawing>
</eagle>
