CPWindow2::CPWindow2(void)
{
  SetFOwner(this);
  SetClass(wxT("CPWindow"));
  SetName(wxT("window2"));
  SetTag(0);
  SetX(312);
  SetY(167);
  SetWidth(733);
  SetHeight(773);
  SetHint(wxT(""));
  SetEnable(1);
  SetVisible(0);
  SetPopupMenu(NULL);
  SetTitle(wxT("picsimlab - Help"));
  SetOverrideRedirect(0);
  //html1
  html1.SetFOwner(this);
  html1.SetClass(wxT("CHtml"));
  html1.SetName(wxT("html1"));
  html1.SetTag(0);
  html1.SetX(18);
  html1.SetY(18);
  html1.SetWidth(695);
  html1.SetHeight(713);
  html1.SetHint(wxT(""));
  html1.SetEnable(1);
  html1.SetVisible(1);
  html1.SetPopupMenu(NULL);
  html1.SetLoadText(wxT(""));
  html1.SetLoadUrl(wxT(""));
  html1.SetLoadFile(wxT(""));
  CreateChild(&html1);
};