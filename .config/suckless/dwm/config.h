/* See LICENSE file for copyright and license details. */

/* appearance */
static const unsigned int borderpx  = 1;        /* Largeur de la bordure entourant les fenêtres */
static const unsigned int snap      = 32;       /* Espace en pixels à partir du moment où la fenêtre se colle aux bords de l'écran */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const char *fonts[]          = { "monospace:size=10" };
static const char background[]      = "#222222";
static const char text[]            = "#e9e9e9";
static const char urgent[]          = "#666666";
static const char *colors[][3]      = {
        /*               fg      bg          border   */
        [SchemeNorm] = { urgent, background, background },
        [SchemeSel]  = { text,   background, urgent  },
};

/* tagging */
static const char *tags[] = { "1", "2", "3", "4", "5 ranger", "6 Freetube", "7 VSCodium", "8 Chromium", "9 Firefox" };

static const Rule rules[] = {
/* isfloating: True : client flottant, False : client en tiling */
/* tags mask: tag le client: 1 << 8 définit le tag 9, 1 << 7 définit le tag 8, ~0 définit tous les tags. */
/* sources: http://dwm.suckless.org/customisation/tagmask */
    /* xprop(1):
     *    WM_CLASS(STRING) = instance, class
     *    WM_NAME(STRING) = title
     */
    /* class       instance    title       tags mask     isfloating   monitor */
    { "ranger",    NULL,       NULL,       1 << 4,       0,           -1 },
    { "Freetube",  NULL,       NULL,       1 << 5,       0,           -1 },
    { "VSCodium",  NULL,       NULL,       1 << 6,       0,           -1 },
    { "Chromium",  NULL,       NULL,       1 << 7,       0,           -1 },
    { "Firefox",   NULL,       NULL,       1 << 8,       0,           -1 },
};

/* layout(s) */
static const float mfact     = 0.55; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 0;    /* 1 means respect size hints in tiled resizals */

static const Layout layouts[] = {
    /* symbol     arrange function */
    { "[]=",      tile },    /* first entry is default */
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
static const char *dmenucmd[]        = { "dmenu_run", "-l", "15" , "-m", dmenumon, "-nb", background, "-nf", text, "-sb", background, "-sf", urgent, NULL };
static const char *termcmd[]         = { "xfce4-terminal", NULL };
static const char *powercmd[]        = { "poweroff", NULL };

static const char *upvol[]           = { "pactl", "set-sink-volume", "0", "+5%", NULL };
static const char *downvol[]         = { "pactl", "set-sink-volume", "0", "-5%", NULL };
static const char *mutevol[]         = { "pactl", "set-sink-volume", "0", "toggle", NULL };

static const char *brightnessup[]    = { "xbacklight", "-inc", "5", "-time", "100", NULL };
static const char *brightnessdown[]  = { "xbacklight", "-dec", "5", "-time", "100", NULL };

static Key keys[] = {
    /* modifier                    key               function        argument */
    /* multimedias */
//    { 0,                           XK_XF86AudioRaiseVolume,          spawn, {.v = upvol } },
//    { 0,                           XK_XF86AudioLowerVolume,          spawn, {.v = downvol } },
//    { 0,                           XK_XF86AudioMute,                 spawn, {.v = mutevol } },
//    { 0,                           XK_XF86MonBrightnessUp,           spawn, {.v = brightnessup } },
//    { 0,                           XK_XF86MonBrightnessDown,         spawn, {.v = brightnessdown } },
/*    { MODKEY,                      XF86XK_AudioMute,                 spawn, {.v = mutevol } },
    { MODKEY,                      XF86XK_AudioRaiseVolume,          spawn, {.v = upvol } },
    { MODKEY,                      XF86XK_AudioLowerVolume,          spawn, {.v = downvol } },
    { MODKEY,                      XK_F10,           spawn,          {.v = mutevol    } },
    { MODKEY,                      XK_F11,           spawn,          {.v = downvol    } },
    { MODKEY,                      XK_F12,           spawn,          {.v = upvol      } },
    { 0,                           0x1008ff11,       spawn,          {.v = downvol    } },
    { 0,                           0x1008ff13,       spawn,          {.v = upvol      } },
    { 0,                           0x1008ff02,       spawn,          {.v = upbri      } },
    { 0,                           0x1008ff03,       spawn,          {.v = downbri    } }, */
    { MODKEY,                      XK_i,             spawn,          {.v = upvol } },
    { MODKEY,                      XK_u,             spawn,          {.v = downvol } },
    { MODKEY,                      XK_y,             spawn,          {.v = mutevol } },
    { MODKEY,                      XK_o,             spawn,          {.v = brightnessup } },
    { MODKEY,                      XK_p,             spawn,          {.v = brightnessdown } },

    { MODKEY,                      XK_a,             spawn,          {.v = dmenucmd } },
    { MODKEY,                      XK_Return,        spawn,          {.v = termcmd } },
    { MODKEY|ShiftMask,            XK_Delete,        spawn,          {.v = powercmd } },
    
    { MODKEY,                      XK_b,             togglebar,      {0} },

    /* windows */
    { MODKEY,                      XK_Delete,        killclient,     {0} },
    { MODKEY,                      XK_Tab,           focusstack,     {.i = +1 } },
    { 0,                           XK_twosuperior,   setlayout,      {0} },

    /* layouts aka workspaces */ 
    TAGKEYS(                       XK_ampersand,                     0)
    TAGKEYS(                       XK_eacute,                        1)
    TAGKEYS(                       XK_quotedbl,                      2)
    TAGKEYS(                       XK_apostrophe,                    3)
    TAGKEYS(                       XK_parenleft,                     4)
    TAGKEYS(                       XK_minus,                         5)
    TAGKEYS(                       XK_egrave,                        6)
    TAGKEYS(                       XK_underscore,                    7)
    TAGKEYS(                       XK_ccedilla,                      8)
    
    { MODKEY|ShiftMask,            XK_e,             quit,           {0} },
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

