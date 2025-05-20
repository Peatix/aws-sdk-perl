
package Paws::ConnectCases::UpdateLayout;
  use Moose;
  has Content => (is => 'ro', isa => 'Paws::ConnectCases::LayoutContent', traits => ['NameInRequest'], request_name => 'content');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainId', required => 1);
  has LayoutId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'layoutId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLayout');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{domainId}/layouts/{layoutId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCases::UpdateLayoutResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::UpdateLayout - Arguments for method UpdateLayout on L<Paws::ConnectCases>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLayout on the
L<Amazon Connect Cases|Paws::ConnectCases> service. Use the attributes of this class
as arguments to method UpdateLayout.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLayout.

=head1 SYNOPSIS

    my $cases = Paws->service('ConnectCases');
    my $UpdateLayoutResponse = $cases->UpdateLayout(
      DomainId => 'MyDomainId',
      LayoutId => 'MyLayoutId',
      Content  => {
        Basic => {
          MoreInfo => {
            Sections => [
              {
                FieldGroup => {
                  Fields => [
                    {
                      Id => 'MyFieldId',    # min: 1, max: 500

                    },
                    ...
                  ],    # max: 100
                  Name => 'MyFieldGroupNameString',    # max: 100; OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],    # max: 1; OPTIONAL
          },    # OPTIONAL
          TopPanel => {
            Sections => [
              {
                FieldGroup => {
                  Fields => [
                    {
                      Id => 'MyFieldId',    # min: 1, max: 500

                    },
                    ...
                  ],    # max: 100
                  Name => 'MyFieldGroupNameString',    # max: 100; OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],    # max: 1; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Name => 'MyLayoutName',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cases/UpdateLayout>

=head1 ATTRIBUTES


=head2 Content => L<Paws::ConnectCases::LayoutContent>

Information about which fields will be present in the layout, the order
of the fields.



=head2 B<REQUIRED> DomainId => Str

The unique identifier of the Cases domain.



=head2 B<REQUIRED> LayoutId => Str

The unique identifier of the layout.



=head2 Name => Str

The name of the layout. It must be unique per domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLayout in L<Paws::ConnectCases>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

