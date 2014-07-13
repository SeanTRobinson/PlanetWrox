using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_Banner : System.Web.UI.UserControl
{
  public Direction DisplayDirection { get; set; }

  protected void Page_Load(object sender, EventArgs e)
  {
    HorizontalPanel.Visible = false;
    VerticalPanel.Visible = false;

    switch(DisplayDirection)
    {
      case Direction.Horizontal:
        HorizontalPanel.Visible = true;
        break;
      case Direction.Vertical:
        VerticalPanel.Visible = true;
        break;
    }

  }
}