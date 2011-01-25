using Gtk;
using Gdk;
using Pango;
using Scintilla;

namespace Gtk 
{

	public struct EditorStyle
	{
		public int index;
		public string name;
		public int fg_color;
		public int bg_color;
		public bool bold;
		public bool italic;

		private static int single_hex_to_dec(char single_hex)
		{
			switch(single_hex)
			{
				case '0': return 0;
				case '1': return 1;
				case '2': return 2;
				case '3': return 3;
				case '4': return 4;
				case '5': return 5;
				case '6': return 6;
				case '7': return 7;
				case '8': return 8;
				case '9': return 9;
				case 'a': return 10;
				case 'b': return 11;
				case 'c': return 12;
				case 'd': return 13;
				case 'e': return 14;
				case 'f': return 15;
				default: return -1; /* should not happen */
			}
		}
		
		public static int hex_to_dec(string hex)
		{
			int decResult = 0;
			/* clean up the incoming hex string */
			string hexstr = hex.down().strip().replace("0x","").replace("#","");
			/* reverse the hexstr, ex: RRGGBB becomes BBGGRR */
			string newhexstr = hexstr.substring(4,2) + hexstr.substring(2,2) + hexstr.substring(0,2);
			for (int i=0; i < newhexstr.length; ++i) {
				char c = (char)newhexstr[i];
				decResult = (16 * decResult) + single_hex_to_dec(c);
			}
			return decResult;
		}
		
	}
}
