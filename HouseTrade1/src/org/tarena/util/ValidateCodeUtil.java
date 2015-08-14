package org.tarena.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.util.Random;

public class ValidateCodeUtil {
	private static final String FONT = "楷体"; // 验证码字体
	private static final Color FONT_COLOR = Color.blue; // 验证码字体颜色
	private static final Color BACKGROUND_COLOR = Color.white; // 验证码背景颜色
	private static final int AUTHCODE_LENGTH = 4; // 验证码长度
	private static final int IMAGE_WHITH =60;
    private static final int IMAGE_HEIGHT =	30;	
    private static final int SINGLECODE_WIDTH=10;
    private static final int INTERVAL_INTERVAL=2;
    private static String[] CODE = { "2", "3", "4", "5", "6", "7", "8", "9", "A", "B",
		"D", "E", "F", "H", "K", "M", "N", "P", "R", "S", "U", "V", "W", "X", "Y", "Z" }; // 验证码包含的符号
	//private static int INTERFERON_NUM = 5;// 干扰素数量
    public static String getAuthCode() {
		StringBuffer authCode =new StringBuffer();
		int codeNum;
		for (int i = 0; i < AUTHCODE_LENGTH; i++) {
			codeNum = (new Random()).nextInt(CODE.length);
			authCode .append(CODE[codeNum]);
		}
		return authCode.toString();
	}
	public static BufferedImage getAuthImg(String authCode) {
		// 设置图片的高、宽、类型
		// RGB编码：red、green、blue
		BufferedImage img = new BufferedImage(IMAGE_WHITH, IMAGE_HEIGHT,
				BufferedImage.TYPE_INT_BGR);
		// 得到图片上的一个画笔
		Graphics g = img.getGraphics();
		// 设置画笔的颜色，用来做背景色
		g.setColor(BACKGROUND_COLOR);
		// 用画笔来填充一个矩形，矩形的左上角坐标，宽，高
		g.fillRect(0, 0, IMAGE_WHITH, IMAGE_HEIGHT);
		// 设置画笔的颜色，用来写字
		g.setColor(FONT_COLOR);
		// 设置字体：宋体、不带格式的、字号
		g.setFont(new Font(FONT, Font.PLAIN,IMAGE_HEIGHT-10));

		// 输出数字
		char c;
		for (int i = 0; i < authCode.toCharArray().length; i++) {
			// 取到对应位置的字符
			c = authCode.charAt(i);
			// 画出一个字符串：要画的内容，开始的位置，高度
			g.drawString(c + "", i * (SINGLECODE_WIDTH + INTERVAL_INTERVAL),
					IMAGE_HEIGHT);
		}

		// 干扰素
//		Random random = new Random();
//		for (int i = 0; i < INTERFERON_NUM; i++) {
//			int x = random.nextInt(IMAGE_WHITH);
//			int y = random.nextInt(IMAGE_HEIGHT);
//			int x2 = random.nextInt(IMG_WIDTH);
//			int y2 = random.nextInt(IMG_HEIGHT);
//			g.drawLine(x, y, x + x2, y + y2);
//		}

		return img;
	}
}
