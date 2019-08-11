school_planner_sources = [
    'app.vala',
    'main-window.vala',
]

school_planner_deps = [
    dependency ('gio-2.0', version: '>= 2.50'),
    dependency ('gtk+-3.0', version: '>= 3.22'),
]

executable (
    'school-planner',
    [
        school_planner_sources,
        school_planner_resources
    ],
    vala_args: '--target-glib=2.50',
    dependencies: school_planner_deps,
    install: true,
)
