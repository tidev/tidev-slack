FROM node:20-alpine

WORKDIR /app
COPY . /app

RUN corepack enable && \
	pnpm install --frozen-lockfile

ENV NODE_ENV production
EXPOSE 80/tcp
CMD [ "pnpm", "start" ]
