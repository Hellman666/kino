let handleAbout = async (req, res) => {
    return res.render(
        "about.ejs",{
        Text: "O kině",
    });
};

module.exports = {
    handleAbout: handleAbout,
};