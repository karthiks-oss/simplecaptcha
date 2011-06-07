package nl.captcha.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nl.captcha.audio.AudioCaptcha;

public class AudioCaptchaServlet extends HttpServlet {

    private static final long serialVersionUID = 4690256047223360039L;

    @Override protected void doGet(HttpServletRequest req,
            HttpServletResponse resp) throws ServletException, IOException {

        AudioCaptcha ac = new AudioCaptcha.Builder()
            .addAnswer()
            .addNoise()
            .build();

        req.getSession().setAttribute(AudioCaptcha.NAME, ac);
        CaptchaServletUtil.writeAudio(resp, ac.getSound());
    }

    @Override protected void doPost(HttpServletRequest req,
            HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
