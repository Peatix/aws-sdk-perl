
package Paws::SecurityIR::UpdateResolverType;
  use Moose;
  has CaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'caseId', required => 1);
  has ResolverType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resolverType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateResolverType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/cases/{caseId}/update-resolver-type');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityIR::UpdateResolverTypeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::UpdateResolverType - Arguments for method UpdateResolverType on L<Paws::SecurityIR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateResolverType on the
L<Security Incident Response|Paws::SecurityIR> service. Use the attributes of this class
as arguments to method UpdateResolverType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateResolverType.

=head1 SYNOPSIS

    my $security-ir = Paws->service('SecurityIR');
    my $UpdateResolverTypeResponse = $security -ir->UpdateResolverType(
      CaseId       => 'MyCaseId',
      ResolverType => 'AWS',

    );

    # Results:
    my $CaseId       = $UpdateResolverTypeResponse->CaseId;
    my $CaseStatus   = $UpdateResolverTypeResponse->CaseStatus;
    my $ResolverType = $UpdateResolverTypeResponse->ResolverType;

    # Returns a L<Paws::SecurityIR::UpdateResolverTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/security-ir/UpdateResolverType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaseId => Str

Required element for UpdateResolverType to identify the case to update.



=head2 B<REQUIRED> ResolverType => Str

Required element for UpdateResolverType to identify the new resolver.

Valid values are: C<"AWS">, C<"Self">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateResolverType in L<Paws::SecurityIR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

