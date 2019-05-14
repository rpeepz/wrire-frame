/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rpapagna <rpapagna@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/09 01:28:43 by rpapagna          #+#    #+#             */
/*   Updated: 2019/05/14 02:55:47 by rpapagna         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/fdf.h"

int		main(int ac, char **av)
{
	t_mlx	*mlx;
	t_map	*map;
	int		fd;

	if (ac < 2)
		return (ft_error(1));
	fd = open(av[1], O_RDONLY);
	if (fd < 0 || parse_fdf(fd, &map))
		return (ft_error(2));
	if (!(mlx = init("baguette")))
		return (ft_error(3));
	mlx->map = map;
	return (0);
}
