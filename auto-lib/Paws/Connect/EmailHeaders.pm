package Paws::Connect::EmailHeaders;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has IN_REPLY_TO => (is => 'ro', isa => 'Str');
  has MESSAGE_ID => (is => 'ro', isa => 'Str');
  has REFERENCES => (is => 'ro', isa => 'Str');
  has X_SES_SPAM_VERDICT => (is => 'ro', isa => 'Str');
  has X_SES_VIRUS_VERDICT => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::EmailHeaders

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::EmailHeaders object:

  $service_obj->Method(Att1 => { IN_REPLY_TO => $value, ..., X_SES_VIRUS_VERDICT => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::EmailHeaders object:

  $result = $service_obj->Method(...);
  $result->Att1->IN_REPLY_TO

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 IN_REPLY_TO => Str


=head2 MESSAGE_ID => Str


=head2 REFERENCES => Str


=head2 X_SES_SPAM_VERDICT => Str


=head2 X_SES_VIRUS_VERDICT => Str



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

