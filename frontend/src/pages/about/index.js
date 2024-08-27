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
          <h2 className={styles.subtitle}>Меня зовут Александр.</h2>
          <div className={styles.text}>
            <p className={styles.textItem}>
			  Добро пожаловать на страницу проекта, который был создан в рамках обучения на курсе Яндекс Практикума. Этот проект является результатом моих самостоятельных усилий и стремления применить полученные знания на практике.
            </p>
            <p className={styles.textItem}>
			  Foodgram — это социальная платформа для всех, кто увлечен кулинарией. Здесь пользователи могут делиться своими кулинарными творениями и обмениваться рецептами. Вы сможете найти вдохновение от других любителей еды и обсудить свои идеи с единомышленниками. Это пространство для общения, обучения и творческого самовыражения тех, кто увлечен приготовлением вкусной еды.
            </p>
            <p className={styles.textItem}>
              Чтобы использовать все возможности сайта — требуется регистрация. Проверка адреса электронной почты не осуществляется.			  
            </p>
            <p className={styles.textItem}>
              Заходите и делитесь своими любимыми рецептами!
            </p>
			<br/>
			<p className={styles.textItem}>
              Выражаю огромную благодарность всей команде Яндекс Практикума за прекрасно организованное обучение, профессионализм, поддержку, лучшие практики и дружественную приятную атмосферу, в которую я погрузился на весь период обучения.<br/>
			  К выбору образовательной организации я подошел со всей своей педантичностью и потратил на это много усилий. Ведь цель - получить знания и удовольствие от процесса обучения.<br/>
			  Ваш подход превзошел все мои ожидания, обучение прошло на высшем уровне, а забота и внимание к деталям сделали этот опыт бесценным. Это лучшее обучение, которое я когда-либо проходил.
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

