
package Paws::ConnectCases::PutCaseEventConfiguration;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainId', required => 1);
  has EventBridge => (is => 'ro', isa => 'Paws::ConnectCases::EventBridgeConfiguration', traits => ['NameInRequest'], request_name => 'eventBridge', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutCaseEventConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{domainId}/case-event-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCases::PutCaseEventConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::PutCaseEventConfiguration - Arguments for method PutCaseEventConfiguration on L<Paws::ConnectCases>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutCaseEventConfiguration on the
L<Amazon Connect Cases|Paws::ConnectCases> service. Use the attributes of this class
as arguments to method PutCaseEventConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutCaseEventConfiguration.

=head1 SYNOPSIS

    my $cases = Paws->service('ConnectCases');
    my $PutCaseEventConfigurationResponse = $cases->PutCaseEventConfiguration(
      DomainId    => 'MyDomainId',
      EventBridge => {
        Enabled      => 1,
        IncludedData => {
          CaseData => {
            Fields => [
              {
                Id => 'MyFieldId',    # min: 1, max: 500

              },
              ...
            ],    # max: 200

          },    # OPTIONAL
          RelatedItemData => {
            IncludeContent => 1,

          },    # OPTIONAL
        },    # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cases/PutCaseEventConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainId => Str

The unique identifier of the Cases domain.



=head2 B<REQUIRED> EventBridge => L<Paws::ConnectCases::EventBridgeConfiguration>

Configuration to enable EventBridge case event delivery and determine
what data is delivered.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutCaseEventConfiguration in L<Paws::ConnectCases>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

