
package Paws::WorkMail::DeleteAvailabilityConfiguration;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAvailabilityConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::DeleteAvailabilityConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DeleteAvailabilityConfiguration - Arguments for method DeleteAvailabilityConfiguration on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAvailabilityConfiguration on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method DeleteAvailabilityConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAvailabilityConfiguration.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $DeleteAvailabilityConfigurationResponse =
      $workmail->DeleteAvailabilityConfiguration(
      DomainName     => 'MyDomainName',
      OrganizationId => 'MyOrganizationId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/DeleteAvailabilityConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The domain for which the C<AvailabilityConfiguration> will be deleted.



=head2 B<REQUIRED> OrganizationId => Str

The WorkMail organization for which the C<AvailabilityConfiguration>
will be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAvailabilityConfiguration in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

