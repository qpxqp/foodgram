import { Title, Container, Main } from '../../components'
import styles from './styles.module.css'
import MetaTags from 'react-meta-tags'

const About = ({ updateOrders, orders }) => {
  
  return <Main>
    <MetaTags>
      <title>О проекте</title>
      <meta name="description" content="Фудграм - О проекте" />
      <meta property="og:title" content="О проекте" />
    </MetaTags>
    
    <Container>
      <h1 className={styles.title}>Привет!</h1>
      <div className={styles.content}>
        <div>
          <h2 className={styles.subtitle}>Что это за проект?</h2>
          <div className={styles.text}>
            <p className={styles.textItem}>
              Представляю вам проект, созданный во время обучения в Яндекс Практикуме. Этот проект — часть учебного курса, но он создан мной полностью самостоятельно.
            </p>
            <p className={styles.textItem}>
              Foodgram — это социальная платформа, ориентированная на кулинарию, которая позволяет пользователям делиться своими кулинарными творениями, обмениваться
			  рецептами и получать вдохновение от других любителей еды. Это пространство для общения, обучения и творческого самовыражения для всех,
			  кто интересуется приготовлением вкусной еды.
            </p>
            <p className={styles.textItem}>
              Чтобы использовать все возможности сайта — требуется регистрация. Проверка адреса электронной почты не осуществляется.			  
            </p>
            <p className={styles.textItem}>
              Заходите и делитесь своими любимыми рецептами!
            </p>
          </div>
        </div>
        {/* <aside>
          <h2 className={styles.additionalTitle}>
            Ссылки
          </h2>
          <div className={styles.text}>
            <p className={styles.textItem}>
              Код проекта находится тут - <a href="#" className={styles.textLink}>Github</a>
            </p>
            <p className={styles.textItem}>
              Автор проекта: <a href="#" className={styles.textLink}>Имя Автора</a>
            </p>
          </div>
        </aside> */}
      </div>
      
    </Container>
  </Main>
}

export default About

