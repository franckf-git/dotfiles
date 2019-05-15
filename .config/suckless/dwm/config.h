/* See LICENSE file for copyright and license details. */

/* appearance */
static const unsigned int borderpx  = 1;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const char *fonts[]          = { "monospace:size=10" };
static const char normbordercolor[] = "#444444"; /* couleur du contour des clients */
static const char normbgcolor[]     = "#222222"; /* couleur de fond clients-statusbar */
static const char normfgcolor[]     = "#bbbbbb"; /* couleur du texte clients-statusbar */
static const char selbordercolor[]  = "#005577"; /* couleur de la bordure du client au premier plan */
static const char selbgcolor[]      = "#005577"; /* couleur du fond sélectionné clients-statusbar */
static const char selfgcolor[]      = "#eeeeee"; /* couleur du texte clients-statusbar au premier plan */
static const char *colors[][3]      = {
        /*                  fg            bg             border   */
        [SchemeNorm] = { normfgcolor, normbgcolor,    normbordercolor },
        [SchemeSel]  = { selfgcolor,  selbordercolor, selbordercolor  },
};

/* tagging */
static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" };
//"一", "二", "三", "四", "五", "六", "七", "八", "九"

static const Rule rules[] = {
/* isfloating: True : client flottant, False : client en tiling */
/* tags mask: tag le client: 1 << 8 définit le tag 9, 1 << 7 définit le tag 8, ~0 définit tous les tags. */
/* sources: http://dwm.suckless.org/customisation/tagmask */
    /* xprop(1):
     *  WM_CLASS(STRING) = instance, class
     *  WM_NAME(STRING) = title
     */
    /* class      instance    title       tags mask     isfloating   monitor */
    { "Gimp",     NULL,       NULL,       0,            1,           -1 },
    { "Firefox",  NULL,       NULL,       1 << 8,       0,           -1 },
};

/* layout(s) */
static const float mfact     = 0.55; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 1;    /* 1 means respect size hints in tiled resizals */

static const Layout layouts[] = {
    /* symbol     arrange function */
    { "[]=",      tile },    /* first entry is default */
    { "><>",      NULL },    /* no layout function means floating behavior */
    { "[M]",      monocle },
};

/* key definitions */
#define MODKEY Mod4Mask
#define TAGKEYS(KEY,TAG) \
    { MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
    { MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
    { MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
    { MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = { "dmenu_run", NULL };
static const char *termcmd[]  = { "st", NULL };

// static const char *upvol[]   = { "pactl", "set-sink-volume", "0", "+5%", NULL };
// static const char *downvol[] = { "pactl", "set-sink-volume", "0", "-5%", NULL };
// static const char *mutevol[] = { "pactl", "set-sink-volume", "0", "toggle", NULL };

// static const char *brightnessup[]   = { "xbacklight", "-inc", "5", "-time", "100", NULL };
// static const char *brightnessdown[] = { "xbacklight", "-dec", "5", "-time", "100", NULL };

static Key keys[] = {
    /* modifier                     key        function        argument */
    // { 0,                            XF86XK_AudioRaiseVolume, spawn, {.v = upvol } },
    // { 0,                            XF86XK_AudioLowerVolume, spawn, {.v = downvol } },
    // { 0,                            XF86XK_AudioMute,        spawn, {.v = mutevol } },
    // { 0,                            XF86XK_MonBrightnessUp,  spawn, {.v = brightnessup } },
    // { 0,                            XF86XK_MonBrightnessDown,spawn, {.v = brightnessdown } },
    { MODKEY,                       XK_p,      spawn,          {.v = dmenucmd } },
    { MODKEY|ShiftMask,             XK_Return, spawn,          {.v = termcmd } },
    { MODKEY,                       XK_b,      togglebar,      {0} },
    { MODKEY,                       XK_j,      focusstack,     {.i = +1 } },
    { MODKEY,                       XK_k,      focusstack,     {.i = -1 } },
    { MODKEY,                       XK_i,      incnmaster,     {.i = +1 } },
    { MODKEY,                       XK_d,      incnmaster,     {.i = -1 } },
    { MODKEY,                       XK_h,      setmfact,       {.f = -0.05} },
    { MODKEY,                       XK_l,      setmfact,       {.f = +0.05} },
    { MODKEY,                       XK_Return, zoom,           {0} },
    { MODKEY,                       XK_Tab,    view,           {0} },
    { MODKEY|ShiftMask,             XK_c,      killclient,     {0} },
    { MODKEY,                       XK_t,      setlayout,      {.v = &layouts[0]} },
    { MODKEY,                       XK_f,      setlayout,      {.v = &layouts[1]} },
    { MODKEY,                       XK_m,      setlayout,      {.v = &layouts[2]} },
    { MODKEY,                       XK_space,  setlayout,      {0} },
    { MODKEY|ShiftMask,             XK_space,  togglefloating, {0} },
    { MODKEY,                       XK_agrave, view,           {.ui = ~0 } },
    { MODKEY|ShiftMask,             XK_agrave, tag,            {.ui = ~0 } },
    { MODKEY,                       XK_comma,  focusmon,       {.i = -1 } },
    { MODKEY,                       XK_period, focusmon,       {.i = +1 } },
    { MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },
    { MODKEY|ShiftMask,             XK_period, tagmon,         {.i = +1 } },
    TAGKEYS(                        XK_ampersand,                     0)
    TAGKEYS(                        XK_eacute,                        1)
    TAGKEYS(                        XK_quotedbl,                      2)
    TAGKEYS(                        XK_apostrophe,                    3)
    TAGKEYS(                        XK_parenleft,                     4)
    TAGKEYS(                        XK_minus,                         5)
    TAGKEYS(                        XK_egrave,                        6)
    TAGKEYS(                        XK_underscore,                    7)
    TAGKEYS(                        XK_ccedilla,                      8)
    { MODKEY|ShiftMask,             XK_q,      quit,           {0} },
};

/* button definitions */
/* For no mouse focus : remove [EnterNotify] = enternotify, in dwm.c */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
    /* click                event mask      button          function        argument */
    { ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
    { ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
    { ClkWinTitle,          0,              Button2,        zoom,           {0} },
    { ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
    { ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
    { ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
    { ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
    { ClkTagBar,            0,              Button1,        view,           {0} },
    { ClkTagBar,            0,              Button3,        toggleview,     {0} },
    { ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
    { ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};
