/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.
 
 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
 // It is safe to enter your event code here
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

Planet obj;
color col;

// object control

public void slider_id_change1(GSlider source, GEvent event) { //_CODE_:slider_id:262439:
  println("slider1 - GSlider >> GEvent." + event + " @ " + millis());
  textfield_id.setText(str(slider_id.getValueI()));
  if (slider_id.getValueI() != -1) {
    obj = objects.get(slider_id.getValueI());
    if (objects.size() > 0) {
      textfield_x.setText(str(obj.pos.x));
      textfield_y.setText(str(obj.pos.y));
      knob_mass.setLimits(obj.mass, 1.0, 100.0);
      knob_radius.setLimits(obj.radius, 10.0, 100.0);
      textfield_mass.setText(str(obj.mass));
      textfield_radius.setText(str(obj.radius));
      slider2d_vel.setLimitsX(obj.vel.x, -1.0, 1.0);
      slider2d_vel.setLimitsY(obj.vel.y, -1.0, 1.0);
      textfield_velX.setText(str(obj.vel.x));
      textfield_velY.setText(str(obj.vel.y));
      textfield_colorH.setText(str(knob_colorH.getValueI()));
      textfield_colorS.setText(str(knob_colorS.getValueI()));
      textfield_colorB.setText(str(knob_colorB.getValueI()));
    }
  } else {
    textfield_x.setText("0");
    textfield_y.setText("0");
    knob_mass.setLimits(1, 1.0, 100.0);
    knob_radius.setLimits(10, 10.0, 100.0);
    textfield_mass.setText("1");
    textfield_radius.setText("10");
    slider2d_vel.setLimitsX(0, -1.0, 1.0);
    slider2d_vel.setLimitsY(0, -1.0, 1.0);
    textfield_velX.setText("0");
    textfield_velY.setText("0");
    textfield_colorH.setText(str(knob_colorH.getValueI()));
    textfield_colorS.setText(str(knob_colorS.getValueI()));
    textfield_colorB.setText(str(knob_colorB.getValueI()));
  }
} //_CODE_:slider_id:262439:

public void textfield_id_change1(GTextField source, GEvent event) { //_CODE_:textfield_id:813337:
  println("textfield1 - GTextField >> GEvent." + event + " @ " + millis());
  if (event == GEvent.LOST_FOCUS) {
    slider_id.setValue(int(textfield_id.getText()));
  }
} //_CODE_:textfield_id:813337:

public void slider2d_move_change1(GSlider2D source, GEvent event) { //_CODE_:slider2d_move:777250:
  println("slider2d1 - GSlider2D >> GEvent." + event + " @ " + millis());
  obj.pos.x += slider2d_move.getValueXF();
  obj.pos.y += slider2d_move.getValueYF();
  textfield_x.setText(str(obj.pos.x));
  textfield_y.setText(str(obj.pos.y));
} //_CODE_:slider2d_move:777250:

public void textfield_x_change1(GTextField source, GEvent event) { //_CODE_:textfield_x:266526:
  println("textfield2 - GTextField >> GEvent." + event + " @ " + millis());
  if (event == GEvent.LOST_FOCUS) {
    obj.pos.x = int(textfield_x.getText());
    slider2d_move.setValueX(obj.pos.x);
  }
} //_CODE_:textfield_x:266526:

public void knob_mass_turn1(GKnob source, GEvent event) { //_CODE_:knob_mass:828708:
  println("knob_mass - GKnob >> GEvent." + event + " @ " + millis());
  obj.mass = knob_mass.getValueI();
  textfield_mass.setText(str(obj.mass));
} //_CODE_:knob_mass:828708:

public void knob_radius_turn2(GKnob source, GEvent event) { //_CODE_:knob_radius:278177:
  println("knob1 - GKnob >> GEvent." + event + " @ " + millis());
  obj.radius = knob_radius.getValueI();
  textfield_radius.setText(str(obj.radius));
} //_CODE_:knob_radius:278177:

public void textfield_mass_change2(GTextField source, GEvent event) { //_CODE_:textfield_mass:498966:
  println("textfield1 - GTextField >> GEvent." + event + " @ " + millis());
  if (event == GEvent.LOST_FOCUS) {
    obj.mass = int(textfield_mass.getText());
    knob_mass.setValue(obj.mass);
  }
} //_CODE_:textfield_mass:498966:

public void textfield_radius_change2(GTextField source, GEvent event) { //_CODE_:textfield_radius:480183:
  println("textfield_radius - GTextField >> GEvent." + event + " @ " + millis());
  if (event == GEvent.LOST_FOCUS) {
    obj.radius = int(textfield_radius.getText());
    knob_radius.setValue(obj.radius);
  }
} //_CODE_:textfield_radius:480183:

public void slider2d_vel_change2(GSlider2D source, GEvent event) { //_CODE_:slider2d_vel:593573:
  println("slider2d_vel - GSlider2D >> GEvent." + event + " @ " + millis());
  obj.vel.x = slider2d_vel.getValueXF();
  obj.vel.y = slider2d_vel.getValueYF();
  textfield_velX.setText(str(obj.vel.x));
  textfield_velY.setText(str(obj.vel.y));
} //_CODE_:slider2d_vel:593573:

public void textfield_velX_change3(GTextField source, GEvent event) { //_CODE_:textfield_velX:205555:
  println("textfield_velX - GTextField >> GEvent." + event + " @ " + millis());
  if (event == GEvent.LOST_FOCUS) {
    obj.vel.x = int(textfield_velX.getText());
    slider2d_vel.setValueX(obj.vel.x);
  }
} //_CODE_:textfield_velX:205555:

public void textfield_velY_change3(GTextField source, GEvent event) { //_CODE_:textfield_velY:377549:
  println("textfield_velY - GTextField >> GEvent." + event + " @ " + millis());
  if (event == GEvent.LOST_FOCUS) {
    obj.vel.y = int(textfield_velY.getText());
    slider2d_vel.setValueY(obj.vel.y);
  }
} //_CODE_:textfield_velY:377549:

public void knob_colorH_turn3(GKnob source, GEvent event) { //_CODE_:knob_colorH:841399:
  println("knob_colorH - GKnob >> GEvent." + event + " @ " + millis());
  col = color(knob_colorH.getValueI(), knob_colorS.getValueI(), knob_colorB.getValueI());
  obj.colour = col;
} //_CODE_:knob_colorH:841399:

public void knob_colorS_turn1(GKnob source, GEvent event) { //_CODE_:knob_colorS:253938:
  println("knob_colorS - GKnob >> GEvent." + event + " @ " + millis());
  col = color(knob_colorH.getValueI(), knob_colorS.getValueI(), knob_colorB.getValueI());
  obj.colour = col;
} //_CODE_:knob_colorS:253938:

public void knob_colorB_turn1(GKnob source, GEvent event) { //_CODE_:knob_colorB:883605:
  println("knob3 - GKnob >> GEvent." + event + " @ " + millis());
  col = color(knob_colorH.getValueI(), knob_colorS.getValueI(), knob_colorB.getValueI());
  obj.colour = col;
} //_CODE_:knob_colorB:883605:

public void textfield_colorH_change4(GTextField source, GEvent event) { //_CODE_:textfield_colorH:777202:
  if (event == GEvent.LOST_FOCUS) {
    println("textfield_colorH - GTextField >> GEvent." + event + " @ " + millis());
    col = color(int(textfield_colorH.getText()), int(textfield_colorS.getText()), int(textfield_colorB.getText()));
    obj.colour = col;
  }
} //_CODE_:textfield_colorH:777202:

public void textfield_colorS_change4(GTextField source, GEvent event) { //_CODE_:textfield_colorS:470968:
  println("textfield_colorS - GTextField >> GEvent." + event + " @ " + millis());
  if (event == GEvent.LOST_FOCUS) {
    col = color(int(textfield_colorH.getText()), int(textfield_colorS.getText()), int(textfield_colorB.getText()));
    obj.colour = col;
  }
} //_CODE_:textfield_colorS:470968:

public void textfield_colorB_change1(GTextField source, GEvent event) { //_CODE_:textfield_colorB:586457:
  println("textfield_colorB - GTextField >> GEvent." + event + " @ " + millis());
  if (event == GEvent.LOST_FOCUS) {
    col = color(int(textfield_colorH.getText()), int(textfield_colorS.getText()), int(textfield_colorB.getText()));
    obj.colour = col;
  }
} //_CODE_:textfield_colorB:586457:

public void textfield_y_change5(GTextField source, GEvent event) { //_CODE_:textfield_y:238672:
  println("textfield_y - GTextField >> GEvent." + event + " @ " + millis());
  if (event == GEvent.LOST_FOCUS) {
    obj.pos.y = int(textfield_y.getText());
    slider2d_move.setValueY(obj.pos.y);
  }
} //_CODE_:textfield_y:238672:



// Create all the GUI controls.
// autogenerated do not edit
public void createGUI() {
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  slider_id = new GSlider(this, 0, 0, 180, 60, 10.0);
  slider_id.setShowValue(true);
  slider_id.setLimits(-1, -1, countOfObjects-1);
  slider_id.setNbrTicks(countOfObjects+1);
  slider_id.setStickToTicks(true);
  slider_id.setNumberFormat(G4P.INTEGER, 0);
  slider_id.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  slider_id.setOpaque(false);
  slider_id.addEventHandler(this, "slider_id_change1");
  textfield_id = new GTextField(this, 0, 60, 180, 20, G4P.SCROLLBARS_NONE);
  textfield_id.setText("-1");
  textfield_id.setOpaque(true);
  textfield_id.addEventHandler(this, "textfield_id_change1");
  slider2d_move = new GSlider2D(this, 0, 80, 60, 60);
  slider2d_move.setLimitsX(0.0, -1.0, 1.0);
  slider2d_move.setLimitsY(0.0, -1.0, 1.0);
  slider2d_move.setNumberFormat(G4P.DECIMAL, 2);
  slider2d_move.setOpaque(true);
  slider2d_move.addEventHandler(this, "slider2d_move_change1");
  textfield_x = new GTextField(this, 60, 80, 120, 20, G4P.SCROLLBARS_NONE);
  textfield_x.setText("0");
  textfield_x.setOpaque(true);
  textfield_x.addEventHandler(this, "textfield_x_change1");
  knob_mass = new GKnob(this, 0, 200, 80, 80, 0.8);
  knob_mass.setTurnRange(110, 70);
  knob_mass.setTurnMode(GKnob.CTRL_HORIZONTAL);
  knob_mass.setSensitivity(1);
  knob_mass.setShowArcOnly(false);
  knob_mass.setOverArcOnly(false);
  knob_mass.setIncludeOverBezel(false);
  knob_mass.setShowTrack(true);
  knob_mass.setLimits(10.0, 1.0, 100.0);
  knob_mass.setNbrTicks(100);
  knob_mass.setStickToTicks(true);
  knob_mass.setShowTicks(true);
  knob_mass.setOpaque(false);
  knob_mass.addEventHandler(this, "knob_mass_turn1");
  knob_radius = new GKnob(this, 100, 200, 80, 80, 0.8);
  knob_radius.setTurnRange(110, 70);
  knob_radius.setTurnMode(GKnob.CTRL_HORIZONTAL);
  knob_radius.setSensitivity(1);
  knob_radius.setShowArcOnly(false);
  knob_radius.setOverArcOnly(false);
  knob_radius.setIncludeOverBezel(false);
  knob_radius.setShowTrack(true);
  knob_radius.setLimits(30.0, 10.0, 100.0);
  knob_radius.setNbrTicks(100);
  knob_radius.setStickToTicks(true);
  knob_radius.setShowTicks(true);
  knob_radius.setOpaque(false);
  knob_radius.addEventHandler(this, "knob_radius_turn2");
  textfield_mass = new GTextField(this, 0, 280, 90, 20, G4P.SCROLLBARS_NONE);
  textfield_mass.setText("0");
  textfield_mass.setOpaque(true);
  textfield_mass.addEventHandler(this, "textfield_mass_change2");
  textfield_radius = new GTextField(this, 90, 280, 90, 20, G4P.SCROLLBARS_NONE);
  textfield_radius.setText("0");
  textfield_radius.setOpaque(true);
  textfield_radius.addEventHandler(this, "textfield_radius_change2");
  slider2d_vel = new GSlider2D(this, 0, 140, 60, 60);
  slider2d_vel.setLimitsX(0.0, -1.0, 1.0);
  slider2d_vel.setLimitsY(0.0, -1.0, 1.0);
  slider2d_vel.setNumberFormat(G4P.DECIMAL, 2);
  slider2d_vel.setOpaque(true);
  slider2d_vel.addEventHandler(this, "slider2d_vel_change2");
  textfield_velX = new GTextField(this, 60, 140, 120, 20, G4P.SCROLLBARS_NONE);
  textfield_velX.setText("0");
  textfield_velX.setOpaque(true);
  textfield_velX.addEventHandler(this, "textfield_velX_change3");
  textfield_velY = new GTextField(this, 60, 160, 120, 20, G4P.SCROLLBARS_NONE);
  textfield_velY.setText("0");
  textfield_velY.setOpaque(true);
  textfield_velY.addEventHandler(this, "textfield_velY_change3");
  knob_colorH = new GKnob(this, 0, 300, 60, 60, 0.8);
  knob_colorH.setTurnRange(110, 70);
  knob_colorH.setTurnMode(GKnob.CTRL_HORIZONTAL);
  knob_colorH.setSensitivity(1);
  knob_colorH.setShowArcOnly(false);
  knob_colorH.setOverArcOnly(false);
  knob_colorH.setIncludeOverBezel(false);
  knob_colorH.setShowTrack(true);
  knob_colorH.setLimits(0.0, 0.0, 255.0);
  knob_colorH.setNbrTicks(255);
  knob_colorH.setStickToTicks(true);
  knob_colorH.setShowTicks(true);
  knob_colorH.setOpaque(false);
  knob_colorH.addEventHandler(this, "knob_colorH_turn3");
  knob_colorS = new GKnob(this, 60, 300, 60, 60, 0.8);
  knob_colorS.setTurnRange(110, 70);
  knob_colorS.setTurnMode(GKnob.CTRL_HORIZONTAL);
  knob_colorS.setSensitivity(1);
  knob_colorS.setShowArcOnly(false);
  knob_colorS.setOverArcOnly(false);
  knob_colorS.setIncludeOverBezel(false);
  knob_colorS.setShowTrack(true);
  knob_colorS.setLimits(255.0, 0.0, 255.0);
  knob_colorS.setNbrTicks(255);
  knob_colorS.setStickToTicks(true);
  knob_colorS.setShowTicks(true);
  knob_colorS.setOpaque(false);
  knob_colorS.addEventHandler(this, "knob_colorS_turn1");
  knob_colorB = new GKnob(this, 120, 300, 60, 60, 0.8);
  knob_colorB.setTurnRange(110, 70);
  knob_colorB.setTurnMode(GKnob.CTRL_HORIZONTAL);
  knob_colorB.setSensitivity(1);
  knob_colorB.setShowArcOnly(false);
  knob_colorB.setOverArcOnly(false);
  knob_colorB.setIncludeOverBezel(false);
  knob_colorB.setShowTrack(true);
  knob_colorB.setLimits(255.0, 0.0, 255.0);
  knob_colorB.setNbrTicks(255);
  knob_colorB.setStickToTicks(true);
  knob_colorB.setShowTicks(true);
  knob_colorB.setOpaque(false);
  knob_colorB.addEventHandler(this, "knob_colorB_turn1");
  textfield_colorH = new GTextField(this, 0, 360, 60, 20, G4P.SCROLLBARS_NONE);
  textfield_colorH.setText("0");
  textfield_colorH.setOpaque(true);
  textfield_colorH.addEventHandler(this, "textfield_colorH_change4");
  textfield_colorS = new GTextField(this, 60, 360, 60, 20, G4P.SCROLLBARS_NONE);
  textfield_colorS.setText("0");
  textfield_colorS.setOpaque(true);
  textfield_colorS.addEventHandler(this, "textfield_colorS_change4");
  textfield_colorB = new GTextField(this, 120, 360, 60, 20, G4P.SCROLLBARS_NONE);
  textfield_colorB.setText("0");
  textfield_colorB.setOpaque(true);
  textfield_colorB.addEventHandler(this, "textfield_colorB_change1");
  textfield_y = new GTextField(this, 60, 100, 120, 20, G4P.SCROLLBARS_NONE);
  textfield_y.setText("0");
  textfield_y.setOpaque(true);
  textfield_y.addEventHandler(this, "textfield_y_change5");
}


// Variable declarations
// autogenerated do not edit
GSlider slider_id;
GTextField textfield_id;
GSlider2D slider2d_move;
GTextField textfield_x;
GKnob knob_mass;
GKnob knob_radius;
GTextField textfield_mass;
GTextField textfield_radius;
GSlider2D slider2d_vel;
GTextField textfield_velX;
GTextField textfield_velY;
GKnob knob_colorH;
GKnob knob_colorS;
GKnob knob_colorB;
GTextField textfield_colorH;
GTextField textfield_colorS;
GTextField textfield_colorB;
GTextField textfield_y;
