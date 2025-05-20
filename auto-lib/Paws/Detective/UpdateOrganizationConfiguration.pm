
package Paws::Detective::UpdateOrganizationConfiguration;
  use Moose;
  has AutoEnable => (is => 'ro', isa => 'Bool');
  has GraphArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateOrganizationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/orgs/updateOrganizationConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::UpdateOrganizationConfiguration - Arguments for method UpdateOrganizationConfiguration on L<Paws::Detective>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateOrganizationConfiguration on the
L<Amazon Detective|Paws::Detective> service. Use the attributes of this class
as arguments to method UpdateOrganizationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateOrganizationConfiguration.

=head1 SYNOPSIS

    my $api.detective = Paws->service('Detective');
    $api . detective->UpdateOrganizationConfiguration(
      GraphArn   => 'MyGraphArn',
      AutoEnable => 1,              # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.detective/UpdateOrganizationConfiguration>

=head1 ATTRIBUTES


=head2 AutoEnable => Bool

Indicates whether to automatically enable new organization accounts as
member accounts in the organization behavior graph.



=head2 B<REQUIRED> GraphArn => Str

The ARN of the organization behavior graph.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateOrganizationConfiguration in L<Paws::Detective>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

