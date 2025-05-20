package Paws::SESv2::ListRecommendationsFilter;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has IMPACT => (is => 'ro', isa => 'Str');
  has RESOURCE_ARN => (is => 'ro', isa => 'Str');
  has STATUS => (is => 'ro', isa => 'Str');
  has TYPE => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::ListRecommendationsFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::ListRecommendationsFilter object:

  $service_obj->Method(Att1 => { IMPACT => $value, ..., TYPE => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::ListRecommendationsFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->IMPACT

=head1 DESCRIPTION

An object that contains mapping between C<ListRecommendationsFilterKey>
and C<ListRecommendationFilterValue> to filter by.

=head1 ATTRIBUTES


=head2 IMPACT => Str


=head2 RESOURCE_ARN => Str


=head2 STATUS => Str


=head2 TYPE => Str



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

