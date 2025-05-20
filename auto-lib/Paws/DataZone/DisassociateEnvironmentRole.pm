
package Paws::DataZone::DisassociateEnvironmentRole;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentIdentifier', required => 1);
  has EnvironmentRoleArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentRoleArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateEnvironmentRole');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/roles/{environmentRoleArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::DisassociateEnvironmentRoleOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::DisassociateEnvironmentRole - Arguments for method DisassociateEnvironmentRole on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateEnvironmentRole on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method DisassociateEnvironmentRole.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateEnvironmentRole.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $DisassociateEnvironmentRoleOutput =
      $datazone->DisassociateEnvironmentRole(
      DomainIdentifier      => 'MyDomainId',
      EnvironmentIdentifier => 'MyEnvironmentId',
      EnvironmentRoleArn    => 'MyString',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/DisassociateEnvironmentRole>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain in which an environment role is
disassociated.



=head2 B<REQUIRED> EnvironmentIdentifier => Str

The ID of the environment.



=head2 B<REQUIRED> EnvironmentRoleArn => Str

The ARN of the environment role.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateEnvironmentRole in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

