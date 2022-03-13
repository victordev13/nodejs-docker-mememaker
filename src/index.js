import memeMaker from '@erickwendel/meme-maker';

const options = {
  image: './images/victor.png',
  outfile: 'images/victor-meme.png',
  bottomText: 'FIQUEI SEM CAFÉ',
};

memeMaker(options)
  .then((_) => {
    console.log('Image saved: ' + options.outfile);
  })
  .catch((err) => console.log(err));
