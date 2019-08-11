/* app.vala
 *
 * Copyright 2019 Nahuel wexd <nahual_gomca@outlook.com.ar>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

namespace SchoolPlanner {

    public class App : Gtk.Application {

        public App () {
            Object (
                application_id: "com.github.nahuelwexd.SchoolPlanner",
                flags: ApplicationFlags.FLAGS_NONE
            );
        }

        public override void activate () {
            var window = this.active_window;

            if (window == null) {
                window = new MainWindow (this);
                window.show_all ();
            }

            window.present ();
        }

        public static int main (string[] args) {
            return new SchoolPlanner.App ().run (args);
        }
    }
}
